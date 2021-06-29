/mob/living/carbon/human
	var/last_interact

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
			return TOPIC_NOACTION

		var/interaction_type = href_list["interaction"]
		var/list/interactions = decls_repository.get_decls_of_subtype(/decl/interaction)
		for(var/interaction in interactions)
			var/decl/interaction/I = interactions[interaction]
			if(ckey(I.interact_name) == interaction_type)
				I.handle_interaction(user, src)
				break

		return TOPIC_HANDLED

/mob/living/carbon/human/proc/hand_check()
	var/obj/item/organ/external/hand = get_organ(get_active_held_item_slot())
	. = !hand?.is_stump()

/mob/living/carbon/human/verb/interact_verb(mob/living/carbon/human/target as mob in view())
	set name = "Interact"
	set category = "IC"
	set src = usr

	if(!QDELETED(target) && (target in view()))
		interact_with(target)
