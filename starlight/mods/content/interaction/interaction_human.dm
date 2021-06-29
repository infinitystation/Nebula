/mob/living/carbon/human
	var/last_interact
	var/lust = 0
	var/max_lust = 180
	var/last_moan
	var/muzzled_until = 0

/mob/living/carbon/human/proc/interact_with(mob/living/carbon/human/P)
	var/content = "<hr><br><center><b><font size=3>Interaction with \the [P.name]</font></b></center><br><hr><br>"

	var/list/interactions = decls_repository.get_decls_of_subtype(/decl/interaction)
	for(var/interaction in interactions)
		var/decl/interaction/I = interactions[interaction]
		if(I.available_for(src, P) && !isnull(I.interact_name))
			content += "<a href='?src=\ref[P];interaction=[ckey(I.interact_name)]'>[FONT_COLORED(I.interact_color_button, I.interact_name)]</a><br>"

	var/datum/browser/popup = new(src, "interactions", "Interactions", 340, 480)
	popup.set_content(content)
	popup.open()

/mob/living/carbon/human/handle_mouse_drop(atom/over, mob/user)
	. = ..()
	if(!. && ishuman(over) && ishuman(user) && user == src && user != over)
		interact_with(over)
		return TRUE

/mob/living/carbon/human/OnTopic(mob/user, href_list)
	. = ..()

	if(href_list["interaction"])
		
		if(!ishuman(user))
			return
			
		var/interaction_type = href_list["interaction"]
		var/list/interactions = decls_repository.get_decls_of_subtype(/decl/interaction)
		for(var/interaction in interactions)
			var/decl/interaction/I = interactions[interaction]
			if(ckey(I.interact_name) == interaction_type)
				I.handle_interaction(user, src)
				return TOPIC_REFRESH

/mob/living/carbon/human/proc/underfluffies_closed()
	. = locate(/obj/item/underwear/bottom) in worn_underwear

/mob/living/carbon/human/proc/hands_check()
	var/obj/item/organ/external/rhand = organs_by_name[BP_R_HAND]
	var/obj/item/organ/external/lhand = organs_by_name[BP_L_HAND]
	return rhand?.is_usable() || lhand?.is_usable()

/mob/living/carbon/human/proc/get_age_pitch()
	. = 1.0 + 0.5 * (30 - get_age()) / 80

/mob/living/carbon/human/is_muzzled()
	return ..() || muzzled_until > world.time

/mob/living/carbon/human/Life()
	. = ..()
	if(lust > 1)
		lust -= 1

/mob/living/carbon/human/examine(mob/user, distance)
	. = ..()

	if(!underfluffies_closed())
		switch(bodytype.associated_gender)
			if(MALE)
				to_chat(user, "They have an exposed penis.[lust > 5 ? " It is erect." : ""]")
			if(FEMALE)
				to_chat(user, "They have an exposed vagina.[lust > 5 ? " It is wet." : ""]")
