/mob/living/carbon/human
	var/lust = 0
	var/max_lust = 180
	var/last_moan
	var/muzzled_until = 0

/mob/living/carbon/human/proc/get_age_pitch()
	. = 1.0 + 0.5 * (30 - get_age()) / 80

/mob/living/carbon/human/proc/underwear_access()
	var/obj/item/clothing/under/U = w_uniform
	. = !underwear_closed() && (!U?.zipped)

/mob/living/carbon/human/proc/underwear_closed()
	. = locate(/obj/item/underwear/bottom) in worn_underwear

/mob/living/carbon/human/is_muzzled()
	return ..() || muzzled_until > world.time

/mob/living/carbon/human/Life()
	. = ..()
	if(lust > 1)
		lust -= 1

/mob/living/carbon/human/examine(mob/user, distance)
	. = ..()
	if(underwear_access())
		var/decl/pronouns/G = get_pronouns()
		if(bodytype.interact_flags & INTERACT_PENIS)
			to_chat(user, "[G.He] has an exposed penis.[lust > 5 ? " It is erect." : ""]")
		if(bodytype.interact_flags & INTERACT_VAGINAL)
			to_chat(user, "[G.He] has an exposed vagina.[lust > 5 ? " It is wet." : ""]")
