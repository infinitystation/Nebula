//I really like fancy fade-in and fade out things.
/obj/effect/shield
	alpha = 0

/obj/machinery/power/shield_generator/regenerate_field()
	if(field_segments.len)
		for(var/obj/effect/shield/S in field_segments)
			qdel(S)

	// The generator is not turned on, so don't generate any new tiles.
	if(!running)
		return

	var/list/shielded_turfs

	if(check_flag(MODEFLAG_HULL))
		shielded_turfs = fieldtype_hull()
	else
		shielded_turfs = fieldtype_square()

	// Rotate shield's animation relative to located ship
	if(GLOB.using_map.use_overmap)
		var/obj/effect/overmap/visitable/ship/sector = map_sectors["[src.z]"]
		if(sector && istype(sector))
			if(!sector.check_ownership(src))
				for(var/obj/effect/overmap/visitable/ship/candidate in sector)
					if(candidate.check_ownership(src))
						sector = candidate
			vessel_reverse_dir = GLOB.reverse_dir[sector.fore_dir]

	for(var/turf/T in shielded_turfs)
		var/obj/effect/shield/S = new(T)
		S.gen = src
		S.flags_updated()
		field_segments |= S
		S.set_dir(vessel_reverse_dir)
		animate(S, alpha = 100, time = 1 SECONDS)
	update_icon()

/obj/machinery/power/shield_generator/shutdown_field()
	for(var/obj/effect/shield/S in field_segments)
		animate(S, alpha = 0, time = 1 SECONDS)
		QDEL_IN(S, 1.1 SECONDS)

	running = SHIELD_OFF
	current_energy = 0
	mitigation_em = 0
	mitigation_physical = 0
	mitigation_heat = 0
	update_icon()

/obj/machinery/power/shield_generator/set_idle(var/new_state)
	if(new_state)
		if(running == SHIELD_IDLE)
			return
		running = SHIELD_IDLE
		for(var/obj/effect/shield/S in field_segments)
			animate(S, alpha = 0, time = 1 SECONDS)
			QDEL_IN(S, 1.1 SECONDS)
	else
		if(running != SHIELD_IDLE)
			return
		running = SHIELD_SPINNING_UP
		spinup_counter = round(spinup_delay / idle_multiplier)

/obj/machinery/power/shield_generator/proc/shield_flicker() // Because it looks nice.
	var/chance = rand(1,2) //Flip a coin.

	switch(chance)
		if(1) //Dimmer
			for(var/obj/effect/shield/S in field_segments)
				animate(S, alpha = 65, time = 0.3 SECONDS)
				addtimer(CALLBACK(src, .proc/reset_shield_alpha), 1.9 SECONDS)
		if(2)//Brighter
			for(var/obj/effect/shield/S in field_segments)
				animate(S, alpha = 155, time = 0.3 SECONDS)
				addtimer(CALLBACK(src, .proc/reset_shield_alpha), 1.9 SECONDS)

/obj/machinery/power/shield_generator/proc/reset_shield_alpha()
	for(var/obj/effect/shield/S in field_segments)
		animate(S, alpha = 100, time = 0.5 SECONDS)

/obj/machinery/power/shield_generator/new_icon/
	icon = 'maps/wolf/icons/shieldgen32x32.dmi'
	icon_state = "shield_gen"
	var/width = 2


/obj/machinery/power/shield_generator/new_icon/Initialize()
	. = ..()
	SetBounds()

/obj/machinery/power/shield_generator/new_icon/on_update_icon()
	overlays.Cut()

	if(!overloaded)
		if(running == SHIELD_DISCHARGING)
			overlays += image('maps/wolf/icons/shieldgen32x32.dmi', "shield_discharging")
		if(running == SHIELD_RUNNING)
			overlays += image('maps/wolf/icons/shieldgen32x32.dmi', "shield_running")
		if(running == SHIELD_SPINNING_UP)
			overlays += image('maps/wolf/icons/shieldgen32x32.dmi', "shield_spinning_up")

	if(overloaded)
		overlays += image('maps/wolf/icons/shieldgen32x32.dmi', "shield_overloaded")

	if(current_energy >= max_energy)
		overlays += image('maps/wolf/icons/shieldgen32x32.dmi', "power_overlay_100")
	if(current_energy >= (max_energy * 0.75))
		overlays += image('maps/wolf/icons/shieldgen32x32.dmi', "power_overlay_75")
	if(current_energy >= (max_energy * 0.50))
		overlays += image('maps/wolf/icons/shieldgen32x32.dmi', "power_overlay_50")
	if(current_energy <= (max_energy * 0.25))
		overlays += image('maps/wolf/icons/shieldgen32x32.dmi', "power_overlay_25")

	if(powernet && (running > SHIELD_OFF) && !input_cut)
		overlays += image('maps/wolf/icons/shieldgen32x32.dmi', "shield-charging")

	if(running > SHIELD_OFF)
		overlays += image('maps/wolf/icons/shieldgen32x32.dmi', "shield_active")

/obj/machinery/power/shield_generator/new_icon/proc/SetBounds()
	bound_width = width * world.icon_size
	bound_height = world.icon_size

/obj/machinery/power/shield_generator/new_icon/Process()
	..()
	update_icon()
	if(prob(10))
		shield_flicker()
