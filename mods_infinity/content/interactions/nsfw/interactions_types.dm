/decl/interaction/sex/check_for(mob/living/carbon/human/H, flags)
	if(!istype(H))
		return FALSE

	var/list/face_covering = H.get_covering_equipped_items(SLOT_FACE)
	if(flags & INTERACT_MOUTH)
		if(face_covering.len || !(H.species.appearance_flags & HAS_LIPS))
			return FALSE

	if(flags & INTERACT_VAGINAL)
		if(!(H.bodytype.interact_flags & INTERACT_VAGINAL) || !H.underwear_access())
			return FALSE

	if(flags & INTERACT_PENIS)
		if(!(H.bodytype.interact_flags & INTERACT_PENIS) || !H.underwear_access())
			return FALSE

	if(flags & INTERACT_ASS)
		if(!(H.bodytype.interact_flags & INTERACT_ASS) || !H.underwear_access())
			return FALSE

	return ..()

/decl/interaction/sex
	interact_flags = INTERACT_HAND | INTERACT_CONSCIOUS | INTERACT_CUFFED | INTERACT_PENIS
	interact_sound = list(
		'mods_infinity/content/interactions/nsfw/sound/bang1.ogg',
		'mods_infinity/content/interactions/nsfw/sound/bang2.ogg',
		'mods_infinity/content/interactions/nsfw/sound/bang3.ogg'
	)

	interact_color_button = COLOR_VIOLET
	interact_color_text = COLOR_VIOLET

	var/hole

	var/list/moan_list = list(
		FEMALE = list(
			'mods_infinity/content/interactions/nsfw/sound/moan_f1.ogg',
			'mods_infinity/content/interactions/nsfw/sound/moan_f2.ogg',
			'mods_infinity/content/interactions/nsfw/sound/moan_f3.ogg',
			'mods_infinity/content/interactions/nsfw/sound/moan_f4.ogg',
			'mods_infinity/content/interactions/nsfw/sound/moan_f5.ogg',
			'mods_infinity/content/interactions/nsfw/sound/moan_f6.ogg',
			'mods_infinity/content/interactions/nsfw/sound/moan_f7.ogg',
		),
		MALE = list(
			'mods_infinity/content/interactions/nsfw/sound/moan_m1.ogg',
			'mods_infinity/content/interactions/nsfw/sound/moan_m2.ogg',
			'mods_infinity/content/interactions/nsfw/sound/moan_m3.ogg',
			'mods_infinity/content/interactions/nsfw/sound/moan_m4.ogg',
			'mods_infinity/content/interactions/nsfw/sound/moan_m5.ogg',
			'mods_infinity/content/interactions/nsfw/sound/moan_m6.ogg',
			'mods_infinity/content/interactions/nsfw/sound/moan_m7.ogg',
			'mods_infinity/content/interactions/nsfw/sound/moan_m8.ogg',
			'mods_infinity/content/interactions/nsfw/sound/moan_m9.ogg'
		)
	)

	var/list/moan_list_closet = list(
		FEMALE = list(
			'mods_infinity/content/interactions/nsfw/sound/moan_under_f1.ogg',
			'mods_infinity/content/interactions/nsfw/sound/moan_under_f2.ogg',
			'mods_infinity/content/interactions/nsfw/sound/moan_under_f3.ogg',
			'mods_infinity/content/interactions/nsfw/sound/moan_under_f4.ogg',
		)
	)

	var/list/final_list = list(
		FEMALE = list(
			'mods_infinity/content/interactions/nsfw/sound/final_f1.ogg',
			'mods_infinity/content/interactions/nsfw/sound/final_f2.ogg',
			'mods_infinity/content/interactions/nsfw/sound/final_f3.ogg'
		),
		MALE = list(
			'mods_infinity/content/interactions/nsfw/sound/final_m1.ogg',
			'mods_infinity/content/interactions/nsfw/sound/final_m2.ogg',
			'mods_infinity/content/interactions/nsfw/sound/final_m3.ogg',
			'mods_infinity/content/interactions/nsfw/sound/final_m4.ogg',
			'mods_infinity/content/interactions/nsfw/sound/final_m5.ogg'
		)
	)

/decl/interaction/sex/proc/cum(mob/living/carbon/human/H, mob/living/carbon/human/P, flag)
	if(H.stat)
		return

	var/message = pick("twists in orgasm", "orgasms", "shivers in arousal", "shivers, their eyes closed")
	var/turf/T = get_turf(P)

	var/bodytype_gender = H.bodytype.associated_gender
	if(bodytype_gender == MALE)
		new /obj/effect/decal/cleanable/cum(T)

		if(flag == INTERACT_MOUTH)
			message = pick("cums in <b>\the [P]</b>'s mouth", "cums onto <b>\the [P]</b>'s face", "covers <b>\the [P]</b>'s face with cum")
		else if(flag == INTERACT_VAGINAL)
			message = pick("cums into <b>\the [P]</b>", "pulls out from \the <b>[P]</b>, then cums onto \the [T]", "penetrates <b>\the [P]</b> at last, shivering")
		else if(flag == INTERACT_ASS)
			message = pick("cums in <b>\the [P]</b>'s ass", "pulls out from <b>\the [P]</b>'s asshole, splattering their cum on them")
		else
			T = get_turf(H)
			message = "cums onto \the [T]"

	H.lust = 0
	ADJ_STATUS(H, STAT_DRUGGY, 5)
	var/list/sound_to_play = SAFEPICK(final_list[bodytype_gender])
	playsound(get_turf(H), sound_to_play, 40 + (bodytype_gender == MALE ? 0 : 40), 1, frequency = H.get_age_pitch())

	var/obj/structure/closet/C = P.loc
	if(!istype(C))
		H.visible_message("<font color='[interact_color_text]'><b>\The [H]</b> [message].</font>")

/decl/interaction/sex/proc/moan(mob/living/carbon/human/H)
	if(H.stat)
		return

	var/bodytype_gender = H.bodytype.associated_gender
	var/obj/structure/closet/C = H.loc
	var/message

	if(prob(H.lust / H.max_lust * (bodytype_gender == MALE ? 30 : 60)))
		message = pick("moans", "moans in arousal", "closes their eyes", "bites their lips")
		var/list/sound_to_play = istype(C) ? moan_list_closet[bodytype_gender] : moan_list[bodytype_gender]
		playsound(get_turf(H), SAFEPICK(sound_to_play), 70, 1, frequency = H.get_age_pitch())

	if(message && !istype(C))
		H.visible_message("<b>\The [H]</b> [message].")

/decl/interaction/sex/handle_other(mob/living/carbon/human/H, mob/living/carbon/human/P)
	if(H.lust >= H.max_lust)
		cum(H, P, hole)

	if(P.lust >= P.max_lust)
		cum(P, H, null)

	H.lust += 10 * rand(0.4, 0.9)
	P.lust += 10 * rand(0.4, 0.9)

	moan(H)
	moan(P)
	H.do_attack_animation(P)

	var/obj/structure/closet/C = P.loc
	if(istype(C))
		playsound(get_turf(C), 'sound/effects/clang.ogg', 40, 0, 0)
		C.shake_animation()

/decl/interaction/sex/vaginal
	interact_name = "Fuck their pussy"
	interact_flags_partner = INTERACT_VAGINAL
	interact_sound = list(
		'mods_infinity/content/interactions/nsfw/sound/bang4.ogg',
		'mods_infinity/content/interactions/nsfw/sound/bang5.ogg',
		'mods_infinity/content/interactions/nsfw/sound/bang6.ogg'
	)
	hole = INTERACT_VAGINAL

/decl/interaction/sex/vaginal/get_message(mob/living/carbon/human/H, mob/living/carbon/human/P)
	return "<b>\The [H]</b> [pick("fucks <b>\the [P]</b>", "roughly fucks <b>\the [P]</b>","makes some love with <b>\the [P]</b>", "penetrates <b>\the [P]</b>", "moves inside <b>\the [P]</b>'s pussy")]"

/decl/interaction/sex/anal
	interact_name = "Fuck their anus"
	interact_flags_partner = INTERACT_ASS
	hole = INTERACT_ASS

/decl/interaction/sex/anal/get_message(mob/living/carbon/human/H, mob/living/carbon/human/P)
	return "<b>\The [H]</b> [pick("fucks <b>\the [P]</b> in ass", "penetrates <b>\the [P]</b>'s asshole", "moves inside <b>\the [P]</b>'s anus")]"

/decl/interaction/sex/oral
	interact_name = "Fuck their mouth"
	interact_flags_partner = INTERACT_MOUTH
	interact_sound = list(
		'mods_infinity/content/interactions/nsfw/sound/oral1.ogg',
		'mods_infinity/content/interactions/nsfw/sound/oral2.ogg'
	)
	hole = INTERACT_MOUTH

/decl/interaction/sex/oral/get_message(mob/living/carbon/human/H, mob/living/carbon/human/P)
	return "<b>\The [H]</b> [pick("forces their cock inside <b>\the [P]</b>'s throat", "shoves their cock deep inside <b>\the [P]</b>'s mouth", "roughly fucks <b>\the [P]</b> in the mouth")]"

/decl/interaction/sex/oral/handle_other(mob/living/carbon/human/H, mob/living/carbon/human/P)
	if(H.lust >= H.max_lust)
		cum(H, P, hole)

	if(P.lust >= P.max_lust)
		cum(P, H, null)

	H.lust += 10 * rand(0.4, 0.9)

	moan(H)
	H.do_attack_animation(P)
	H.face_atom(P)
	P.muzzled_until = world.time + (10 SECONDS)

/decl/interaction/sex/oral/blowjob
	interact_name = "Suck them off"
	interact_flags = INTERACT_HAND | INTERACT_CONSCIOUS | INTERACT_CUFFED | INTERACT_MOUTH
	interact_flags_partner = INTERACT_PENIS
	interact_sound = list(
		'mods_infinity/content/interactions/nsfw/sound/bj1.ogg',
		'mods_infinity/content/interactions/nsfw/sound/bj2.ogg',
		'mods_infinity/content/interactions/nsfw/sound/bj3.ogg',
		'mods_infinity/content/interactions/nsfw/sound/bj4.ogg',
		'mods_infinity/content/interactions/nsfw/sound/bj5.ogg',
		'mods_infinity/content/interactions/nsfw/sound/bj6.ogg',
		'mods_infinity/content/interactions/nsfw/sound/bj7.ogg',
		'mods_infinity/content/interactions/nsfw/sound/bj8.ogg',
		'mods_infinity/content/interactions/nsfw/sound/bj9.ogg',
		'mods_infinity/content/interactions/nsfw/sound/bj10.ogg',
		'mods_infinity/content/interactions/nsfw/sound/bj11.ogg'
	)

/decl/interaction/sex/oral/blowjob/get_message(mob/living/carbon/human/H, mob/living/carbon/human/P)
	return "<b>[H]</b> [pick("sucks <b>\the [P]</b>'s cock", "sucks <b>\the [P]</b> off")]"

/decl/interaction/sex/oral/blowjob/handle_other(mob/living/carbon/human/H, mob/living/carbon/human/P)
	if(H.lust >= H.max_lust)
		cum(H, P, null)

	if(P.lust >= P.max_lust)
		cum(P, H, hole)

	P.lust += 10 * rand(0.4, 0.9)

	moan(P)
	H.do_attack_animation(P)
	H.face_atom(P)
	H.muzzled_until = world.time + (5 SECONDS)

#undef INTERACT_VAGINAL
#undef INTERACT_PENIS
#undef INTERACT_MOUTH
#undef INTERACT_ASS
