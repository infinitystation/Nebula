//entire datum

/datum/interaction
	var/name = "You should not see this"
	var/id   = null //ID for hrefs and global list, seems odd (as you can use interaction names to generate lists etc), maybe remove them later

	//avail flags see above, theyre self explanatory

	var/user_flags    = null
	var/partner_flags = null

	var/adjacent = 1              //e.g if interaction is distant like wave

	var/color         = "#000000" //Color of text
	var/list/sounds   = list()    //Sounds to pick from, when makin' love, u knw
	var/bold_prob     = 0         //Bold text prob
	var/sound_prob    = 100       //Sound prob

//avalibility check

/datum/interaction/proc/check_for(var/mob/living/carbon/human/H, flags)
	. = 1
	var/list/face_covering = H.get_covering_equipped_items(SLOT_FACE)
	if((flags & INT_BREA) && H.gender != FEMALE)
		. = 0
	if((flags & INT_PEN) && (!H.underfluffies_access() || H.gender != MALE))
		. = 0
	if((flags & INT_VAG) && (!H.underfluffies_access() || H.gender != FEMALE))
		. = 0
	if((flags & INT_ASS) && !H.underfluffies_access())
		. = 0
	if((flags & INT_MOU) && (face_covering.len || !(H.species.appearance_flags & HAS_LIPS)))
		. = 0
	if((flags & INT_HAN) && !H.hands_check())
		. = 0
	if((flags & INT_CONS) && H.stat)
		. = 0
	if((flags & INT_CUFF) && H.restrained())
		. = 0

/datum/interaction/proc/available_for(var/mob/living/carbon/human/H,var/mob/living/carbon/human/P)
	. = 1
	if(!H || (adjacent && !(H.Adjacent(P) || H.loc == P.loc)) || !(check_for(H,user_flags) && check_for(P,partner_flags)) || (!(user_flags & INT_SELF) && H == P)) . = 0

/datum/interaction/proc/handle(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P) //essentialy, H is initator, P is partner
	if(!available_for(H,P) || H.last_interact + INTERACT_DELAY > world.time) return
	handle_text(H,P)
	handle_sounds(H,P)
	handle_other(H,P)
	H.last_interact = world.time

/datum/interaction/proc/handle_text(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	var/message = get_message(H,P)
	if(prob(bold_prob)) H.visible_message("<span style='color: [color]'><B>[message].</B></span>")
	else H.visible_message("<span style='color: [color]'>[message].</span>")

/datum/interaction/proc/handle_sounds(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	if(prob(sound_prob) && sounds.len) playsound(get_turf(H), safepick(sounds), 70, 1, -1)

/datum/interaction/proc/handle_other(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	return

//as you can see thing below needs to be overriden..
/datum/interaction/proc/get_message(var/mob/living/carbon/human/H, var/mob/living/carbon/human/P)
	return "[B(H)] hugs [B(P)]"
