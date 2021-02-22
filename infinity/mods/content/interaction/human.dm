//vars

/mob/living/carbon/human
	var/last_interact

	var/lust     = 0
	var/max_lust = 180

	var/last_moan //Number of sound (moan)

	var/muzzled_until = 0

//procs

//interface window

/mob/living/carbon/human/proc/interact_with(var/mob/living/carbon/human/P)
	var/dat = "<hr><b><font size=3>Interaction with [P.name]</font></b><br><hr><br>"
	for(var/id in global.interactions)
		var/datum/interaction/I = global.interactions[id]
		if(I.available_for(src,P)) dat += "<a href='?src=\ref[P];interaction=[I.id]'>[I.name]</a><br>"
	var/datum/browser/popup = new(src, "interactions", "Interactions", 340, 480)
	popup.set_content(dat)
	popup.open()

/mob/living/carbon/human/MouseDrop(var/mob/M) //maybe add a verb later?..
	..()
	if(ishuman(M) && src == usr)
		interact_with(M)

/mob/living/carbon/human/OnTopic(mob/user, href_list)
	. = ..()
	if(!ishuman(user)) return
	var/interaction = href_list["interaction"]
	if(global.interactions[interaction])
		var/datum/interaction/I = global.interactions[interaction]
		I.handle(user,src)

/mob/living/carbon/human/proc/underfluffies_access()
	var/obj/item/clothing/under/U = w_uniform
	. = !underfluffies_closed() && (U && U.zipper || !U)

/mob/living/carbon/human/proc/underfluffies_closed()
	. = locate(/obj/item/underwear/bottom) in worn_underwear

/mob/living/carbon/human/proc/hands_check()
	var/obj/item/organ/external/rhand = organs_by_name[BP_R_HAND]
	var/obj/item/organ/external/lhand = organs_by_name[BP_L_HAND]
	return ( rhand && rhand.is_usable() ) && ( lhand && lhand.is_usable() )

/mob/living/carbon/human/proc/get_age_pitch()
	. = 1.0 + 0.5 * (30 - age) / 80

/mob/living/carbon/human/is_muzzled()
	return ..() || muzzled_until > world.time

//Misc.

/mob/living/carbon/human/Life()
	. = ..()
	if(lust > 1)
		lust -= 1

/mob/living/carbon/human/examine(mob/user, distance)
	. = ..()
	if(!underfluffies_access())
		return
	switch(gender)
		if(MALE)
			to_chat(user,SPAN_BOLD("They have an exposed penis.[lust > 5 ? " It is erect." : ""]"))
		if(FEMALE)
			to_chat(user,SPAN_BOLD("They have an exposed vagina.[lust > 5 ? " It is wet."   : ""]"))
