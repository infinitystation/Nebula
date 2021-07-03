// Ported from burgerstation.
/atom/movable/damage_number
	name = "damage number"
	desc = "We a JRPG now!"

	icon = null
	mouse_opacity = 0
	layer = ABOVE_HUMAN_LAYER

	pixel_x =  -WORLD_ICON_SIZE
	pixel_y = -WORLD_ICON_SIZE

	maptext_x = 0
	maptext_y = 0
	maptext_height = WORLD_ICON_SIZE * 3
	maptext_width = WORLD_ICON_SIZE * 3

	maptext = "Bug"

	var/current_value

/atom/movable/damage_number/Initialize(desired_location, desired_value)
	. = ..()
	if(desired_value) 
		add_value(desired_value)

/atom/movable/damage_number/proc/fade()
	animate(src, alpha = 0, time = 10)
	addtimer(CALLBACK(src, /atom/movable/damage_number/proc/remove), 10)

/atom/movable/damage_number/proc/remove()
	qdel(src)

/atom/movable/damage_number/proc/add_value(desired_value, desired_color = "#ffffff", desired_size = 0.5)
	if(current_value)
		current_value += desired_value
		animate(src, alpha = 255, flags = ANIMATION_END_NOW)
	else
		current_value = desired_value
		alpha = 255
		animate(src, pixel_x = initial(pixel_x) + rand(-WORLD_ICON_SIZE, WORLD_ICON_SIZE), pixel_y = initial(pixel_y) + rand(0, WORLD_ICON_SIZE), time = 30, easing = CIRCULAR_EASING | EASE_OUT)

	current_value = clamp(current_value, 1, 9999999)
	
	var/damage_color_math = clamp(255 - (current_value / 200) * 255, 0, 255)
	desired_size = clamp(current_value * 0.01, 0.25, 4)
	desired_color = rgb(255, damage_color_math, damage_color_math)

	var/desired_text = current_value
	if(current_value == 69 || current_value == 420)
		desired_text = "[current_value] ([pick("nice", "wow")])"
	
	var/style = "font-family: 'Fixedsys'; font-size: [desired_size]px; color: [desired_color]; -dm-text-outline: 1 [COLOR_BLACK];"
	maptext = "<center><span style=\"[style]\">[desired_text]</span></center>"

/proc/apply_damage_number_effect(atom/A, number)
	if((number > 0) && isturf(A.loc))
		var/turf/T = A.loc
		if(T)
			var/atom/movable/damage_number/DN = locate() in T.contents
			if(DN)
				DN.add_value(number)
			else
				DN = new /atom/movable/damage_number(T, number)

			addtimer(CALLBACK(DN, /atom/movable/damage_number/proc/fade), 35)

/mob/living/apply_damage(var/damage = 0,var/damagetype = BRUTE, var/def_zone = null, var/damage_flags = 0, var/used_weapon = null, var/armor_pen, var/silent = FALSE)
	if(!damage)
		return FALSE

	var/list/after_armor = modify_damage_by_armor(def_zone, damage, damagetype, damage_flags, src, armor_pen, silent)
	damage = after_armor[1]
	damagetype = after_armor[2]
	damage_flags = after_armor[3] // args modifications in case of parent calls
	if(!damage)
		return FALSE

	switch(damagetype)
		if(BRUTE)
			adjustBruteLoss(damage)
		if(BURN)
			if(MUTATION_COLD_RESISTANCE in mutations)
				damage = 0
			adjustFireLoss(damage)
		if(TOX)
			adjustToxLoss(damage)
		if(OXY)
			adjustOxyLoss(damage)
		if(CLONE)
			adjustCloneLoss(damage)
		if(PAIN)
			adjustHalLoss(damage)
		if(ELECTROCUTE)
			electrocute_act(damage, used_weapon, 1, def_zone)
		if(IRRADIATE)
			apply_radiation(damage)

	updatehealth()

	apply_damage_number_effect(src, damage)

	return TRUE

/mob/living/exosuit/apply_damage(var/damage = 0,var/damagetype = BRUTE, var/def_zone = null, var/damage_flags = 0, var/used_weapon = null, var/armor_pen, var/silent = FALSE)
	if(!damage)
		return 0

	var/list/after_armor = modify_damage_by_armor(def_zone, damage, damagetype, damage_flags, src, armor_pen, TRUE)
	damage = after_armor[1]
	damagetype = after_armor[2]

	if(!damage)
		return 0

	var/target = zoneToComponent(def_zone)
	//Only 3 types of damage concern mechs and vehicles
	switch(damagetype)
		if(BRUTE)
			adjustBruteLoss(damage, target)
		if(BURN)
			adjustFireLoss(damage, target)
		if(IRRADIATE)
			radiation += damage

	if((damagetype == BRUTE || damagetype == BURN) && prob(25+(damage*2)))
		spark_at(src)
	updatehealth()

	apply_damage_number_effect(src, damage)

	return TRUE

/mob/living/carbon/human/apply_damage(var/damage = 0, var/damagetype = BRUTE, var/def_zone = null, var/damage_flags = 0, var/obj/used_weapon = null, var/armor_pen, var/silent = FALSE, var/obj/item/organ/external/given_organ = null)

	var/obj/item/organ/external/organ = given_organ
	if(!organ)
		if(isorgan(def_zone))
			organ = def_zone
		else
			if(!def_zone)
				if(damage_flags & DAM_DISPERSED)
					var/old_damage = damage
					var/tally
					silent = TRUE // Will damage a lot of organs, probably, so avoid spam.
					for(var/zone in organ_rel_size)
						tally += organ_rel_size[zone]
					for(var/zone in organ_rel_size)
						damage = old_damage * organ_rel_size[zone]/tally
						def_zone = zone
						. = .() || .
					return
				def_zone = ran_zone(def_zone, target = src)
			organ = get_organ(check_zone(def_zone, src))

	//Handle other types of damage
	if(!(damagetype in list(BRUTE, BURN, PAIN, CLONE)))
		return ..()
	if(!istype(organ))
		return 0 // This is reasonable and means the organ is missing.

	handle_suit_punctures(damagetype, damage, def_zone)

	var/list/after_armor = modify_damage_by_armor(def_zone, damage, damagetype, damage_flags, src, armor_pen, silent)
	damage = after_armor[1]
	damagetype = after_armor[2]
	damage_flags = after_armor[3]
	if(!damage)
		return 0

	if(damage > 15 && prob(damage*4) && organ.can_feel_pain())
		make_reagent(round(damage/10), /decl/material/liquid/adrenaline)
	var/datum/wound/created_wound
	damageoverlaytemp = 20
	switch(damagetype)
		if(BRUTE)
			created_wound = organ.take_external_damage(damage, 0, damage_flags, used_weapon)
		if(BURN)
			created_wound = organ.take_external_damage(0, damage, damage_flags, used_weapon)
		if(PAIN)
			organ.add_pain(damage)
		if(CLONE)
			organ.add_genetic_damage(damage)

	// Will set our damageoverlay icon to the next level, which will then be set back to the normal level the next mob.Life().
	updatehealth()
	BITSET(hud_updateflag, HEALTH_HUD)

	apply_damage_number_effect(src, damage)

	return created_wound
