/datum/job/wyrm/miscellaneous/computer
	title = "Computer"
	event_categories = list("AI")
	total_positions = 0 // Not used for AI, see is_position_available below and modules/mob/living/silicon/ai/latejoin.dm
	spawn_positions = 1
	selection_color = "#3f823f"
	supervisors = "your laws"
	req_admin_notify = 1
	minimal_player_age = 14
	account_allowed = 0
	economic_power = 0
	outfit_type = /decl/hierarchy/outfit/job/silicon/ai
	loadout_allowed = FALSE
	skill_points = 0
	no_skill_buffs = TRUE
	guestbanned = 1
	not_random_selectable = 1
	// skip_loadout_preview = TRUE

/datum/job/wyrm/miscellaneous/computer/equip(mob/living/carbon/human/H)
	if(!H)	return FALSE
	return TRUE

/datum/job/wyrm/miscellaneous/computer/is_position_available()
	return (empty_playable_ai_cores.len != 0)

/datum/job/wyrm/miscellaneous/computer/handle_variant_join(mob/living/carbon/human/H, alt_title)
	return H

/datum/job/wyrm/miscellaneous/computer/do_spawn_special(mob/living/character, mob/new_player/new_player_mob, latejoin)
	character = character.AIize(move = 0) // AIize the character, but don't move them yet

	// is_available for AI checks that there is an empty core available in this list
	var/obj/structure/aicore/deactivated/C = empty_playable_ai_cores[1]
	empty_playable_ai_cores -= C

	character.forceMove(C.loc)
	var/mob/living/silicon/ai/A = character
	A.on_mob_init()

	if(latejoin)
		new_player_mob.AnnounceCyborg(character, title, "has been downloaded to the empty core in \the [get_area(character)]")
	SSticker.mode.handle_latejoin(character)

	qdel(C)
	return TRUE

/datum/job/wyrm/miscellaneous/robot
	title = "Robot"
	event_categories = list("Robot")
	total_positions = 1
	spawn_positions = 1
	supervisors = "your laws, the First Mate, and the Captain"
	selection_color = "#254c25"
	minimal_player_age = 7
	account_allowed = 0
	economic_power = 0
	loadout_allowed = FALSE
	outfit_type = /decl/hierarchy/outfit/job/silicon/cyborg
	skill_points = 0
	no_skill_buffs = TRUE
	guestbanned = 1
	not_random_selectable = 1
	// skip_loadout_preview = TRUE

/datum/job/wyrm/miscellaneous/robot/handle_variant_join(mob/living/carbon/human/H, alt_title)
	if(H)
		return H.Robotize(SSrobots.get_mob_type_by_title(alt_title || title))

/datum/job/wyrm/miscellaneous/robot/equip(mob/living/carbon/human/H)
	return !!H

/datum/job/wyrm/miscellaneous/robot/New()
	..()
	alt_titles = SSrobots.robot_alt_titles.Copy()
	alt_titles -= title
