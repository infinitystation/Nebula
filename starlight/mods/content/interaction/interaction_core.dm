//entire datum

/decl/interaction
	/// Name of the action.
	var/interact_name

	/// Flags for mob whoes doing the action.
	var/interact_flags
	/// Flags for mob whoes accept the action.
	var/interact_flags_partner

	/// Range to interact. Set `0` to disable this check.
	var/interact_range = 1

	/// List of executable sounds.
	var/list/interact_sound
	/// Probability of executable sounds.
	var/interact_sound_prob = 100

	/// Delay for the interaction.
	var/interact_delay = 0.5 SECONDS

	/// Button color override in the interaction panel.
	var/interact_color_button
	/// Text color on message output.
	var/interact_color_text = "#000000"

/decl/interaction/proc/check_for(mob/living/carbon/human/H, flags)
	if(!istype(H))
		return FALSE

	var/list/face_covering = H.get_covering_equipped_items(SLOT_FACE)
	if(flags & INTERACT_MOUTH)
		if(face_covering.len || !(H.species.appearance_flags & HAS_LIPS))
			return FALSE

	if(flags & INTERACT_VAGINAL)
		if(!(H.bodytype.interact_flags & INTERACT_VAGINAL) || !H.underwear_access())
			return FALSE

	if(flags & INTERACT_BREAST)
		if(!(H.bodytype.interact_flags & INTERACT_BREAST) || !H.underwear_access())
			return FALSE

	if(flags & INTERACT_PENIS)
		if(!(H.bodytype.interact_flags & INTERACT_PENIS) || !H.underwear_access())
			return FALSE

	if(flags & INTERACT_ASS)
		if(!(H.bodytype.interact_flags & INTERACT_ASS) || !H.underwear_access())
			return FALSE

	if(flags & INTERACT_HAND)
		if(!H.hand_check())
			return FALSE

	if(flags & INTERACT_CONSCIOUS)
		if(H.stat)
			return FALSE

	if(flags & INTERACT_CUFFED)
		if(H.restrained())
			return FALSE

	return TRUE

/decl/interaction/proc/available_for(mob/living/carbon/human/H, mob/living/carbon/human/P)
	if(!H || H.last_interact + (interact_delay) > world.time)
		return FALSE

	if(interact_range && !(get_dist(H, P) <= interact_range || H.loc == P.loc))
		return FALSE

	if(!(check_for(H, interact_flags) && check_for(P, interact_flags_partner))) 
		return FALSE
	
	if(!(interact_flags & INTERACT_SELF) && H == P)
		return FALSE

	return TRUE

// Essentialy, H is initator, P is partner.
/decl/interaction/proc/handle_interaction(mob/living/carbon/human/H, mob/living/carbon/human/P)
	if(!available_for(H, P)) 
		return

	handle_text(H, P)
	handle_sounds(H, P)
	handle_other(H, P)

	H.last_interact = world.time

/decl/interaction/proc/handle_text(mob/living/carbon/human/H, mob/living/carbon/human/P)
	H.visible_message("<font color='[interact_color_text]'>[get_message(H, P)].</font>")

/decl/interaction/proc/handle_sounds(mob/living/carbon/human/H, mob/living/carbon/human/P)
	if(interact_sound && prob(interact_sound_prob))
		var/sound_to_play = interact_sound
		if(islist(interact_sound))
			sound_to_play = SAFEPICK(sound_to_play)
		return playsound(get_turf(H), sound_to_play, 70, 1, -1)

/decl/interaction/proc/handle_other(mob/living/carbon/human/H, mob/living/carbon/human/P)
	return

//as you can see thing below needs to be overriden..
/decl/interaction/proc/get_message(mob/living/carbon/human/H, mob/living/carbon/human/P)
	return "<b>\The [H]</b> hugs <b>\the [P]</b>"
