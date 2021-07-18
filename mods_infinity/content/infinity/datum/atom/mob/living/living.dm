/mob/living/Initialize()
	. = ..()
	if(isSynthetic())
		overlay_fullscreen("synthetic_noise",    /obj/screen/fullscreen/noise,    null)
		overlay_fullscreen("synthetic_scanline", /obj/screen/fullscreen/scanline, null)

//This is called when the mob is thrown into a dense turf
/mob/living/turf_collision(turf/T, speed)
	. = ..()
	playsound(T, pick(list(
		'mods_infinity/content/infinity/datum/atom/mob/living/gore/smash1.ogg',
		'mods_infinity/content/infinity/datum/atom/mob/living/gore/smash2.ogg',
		'mods_infinity/content/infinity/datum/atom/mob/living/gore/smash3.ogg',
		'mods_infinity/content/infinity/datum/atom/mob/living/gore/trauma1.ogg')), 50, 1, 1)

	if(client)
		shake_camera(src, 7, 1)

/mob/living/carbon/human/handle_fall_effect(landing)
	. = ..()
	playsound(landing, pick(list(
		'mods_infinity/content/infinity/datum/atom/mob/living/gore/smash1.ogg',
		'mods_infinity/content/infinity/datum/atom/mob/living/gore/smash2.ogg',
		'mods_infinity/content/infinity/datum/atom/mob/living/gore/smash3.ogg',
		'mods_infinity/content/infinity/datum/atom/mob/living/gore/trauma1.ogg')), 50, 1, -1)

	if(client)
		shake_camera(src, 7, 0.5)

/mob/living/set_ambition()
	set category = "IC"
	set src = usr

	if(!mind)
		return

	if(!is_special_character(mind))
		to_chat(src, SPAN_WARNING("While you may perhaps have goals, this verb's meant to only be visible \
		to antagonists. Please make a bug report!"))
		return

	var/datum/goal/ambition/goals = SSgoals.ambitions[mind]
	var/new_goal = sanitize(input(src, "Write down what you want to achieve in this round as an antagonist \
	- your goals. They will be visible to all players after the end of the round. \
	remember you cannot rewrite them - only add new lines.", "Antagonist Goal") as null|message)
	if(!isnull(new_goal))
		if(!goals)
			goals = new /datum/goal/ambition(mind)
		goals.description += "<br>[roundduration2text()]: [new_goal]"
		to_chat(src, SPAN_NOTICE("Your ambitions now look like this: <b>[goals.description]</b>."))
		to_chat(src, SPAN_NOTICE("You can view your ambitions in the <b>Notes</b> panel, or with the <b>Show Goals</b> verb. If you wish to change your ambition, \
		please contact to Administator."))
		log_and_message_admins("has updated their ambitions. New one: [new_goal]")
