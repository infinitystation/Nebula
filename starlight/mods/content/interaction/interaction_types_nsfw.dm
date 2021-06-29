/obj/structure/closet/Initialize()
	. = ..()
	storage_capacity *= 3

/decl/interaction/sex
	interact_flags = INTERACT_HANDS | INTERACT_CONSCIOUS | INTERACT_CUFFED | INTERACT_PENIS
	interact_sound = list(
		'starlight/mods/content/interaction/sound/bang1.ogg',
		'starlight/mods/content/interaction/sound/bang2.ogg',
		'starlight/mods/content/interaction/sound/bang3.ogg'
	)

	interact_color_button = COLOR_VIOLET
	interact_color_text = COLOR_VIOLET

	var/hole

/obj/effect/decal/cleanable/cum
	name = "cum"
	desc = "It's pie cream from a cream pie. Or not..."
	icon = 'starlight/mods/content/interaction/icons/effects.dmi'
	random_icon_states = list("cum1", "cum3", "cum4", "cum5", "cum6", "cum7", "cum8", "cum9", "cum10", "cum11", "cum12")

/decl/interaction/sex/proc/cum(mob/living/carbon/human/H, mob/living/carbon/human/P, flag)
	if(H.stat) 
		return

	var/message = pick("twists in orgasm", "orgasms", "shivers in arousal", "shivers, their eyes closed")
	var/turf/T = get_turf(H)

	var/gender_suffix = (H.bodytype.associated_gender == MALE)
	if(gender_suffix)

		new /obj/effect/decal/cleanable/cum(T)

		if(flag == INTERACT_MOUTH)
			message = pick("cums in <b>\the [P]</b>'s mouth", "cums onto <b>\the [P]</b>'s face", "covers <b>\the [P]</b>'s face with cum")

		else if(flag == INTERACT_VAGINAL)
			message = pick("cums into <b>\the [P]</b>", "pulls out from \the <b>[P]</b>, then cums onto \the [T]", "penetrates <b>\the [P]</b> at last, shivering")

		else if(flag == INTERACT_ASS)
			message = pick("cums in <b>\the [P]</b>'s ass", "pulls out from <b>\the [P]</b>'s asshole, splattering their cum on them")

		else
			message = "cums onto \the [T]"

	H.lust = 0
	ADJ_STATUS(H, STAT_DRUGGY, 5)
	H.visible_message("<font color='[interact_color_text]'><b>\The [H]</b> [message].</font>")
	playsound(get_turf(H), "starlight/mods/content/interaction/sound/final_[gender_suffix ? "m" : "f"][gender_suffix ? rand(1,5) : rand(1,3)].ogg", 40 + (gender_suffix ? 0 : 40), 1, frequency = H.get_age_pitch())

/decl/interaction/sex/proc/moan(mob/living/carbon/human/H)
	if(H.stat) 
		return

	var/message

	if(prob(H.lust / H.max_lust * (H.gender == MALE ? 5 : 60)))
		message = pick("moans", "moans in arousal", "closes their eyes", "bites their lips")

		var/gender_suffix = H.bodytype.associated_gender == FEMALE ? "f" : "m"
		var/moan_sound = rand(1, 7)

		if(moan_sound == H.last_moan && moan_sound != 1) 
			moan_sound--
	
		if(!istype(H.loc, /obj/structure/closet)) 
			playsound(get_turf(H), "starlight/mods/content/interaction/sound/moan_[gender_suffix][moan_sound].ogg", 70, 1, frequency = H.get_age_pitch())
		else if (gender_suffix == "f") 
			playsound(get_turf(H), "starlight/mods/content/interaction/sound/under_moan_f[rand(1, 4)].ogg", 70, 1, frequency = H.get_age_pitch())

		H.last_moan = moan_sound

	if(message) 
		H.visible_message("<b>\The [H]</b> [message].")

/decl/interaction/sex/proc/animate_with(mob/living/carbon/human/H, mob/living/carbon/human/P)
	var/pixel_x_diff = 0
	var/pixel_y_diff = 0

	var/direction = get_dir(H, P)
	if(direction & NORTH) 
		pixel_y_diff = 8
	else if(direction & SOUTH) 
		pixel_y_diff = -8
	if(direction & EAST) 
		pixel_x_diff = 8
	else if(direction & WEST) 
		pixel_x_diff = -8

	if(pixel_x_diff == 0 && pixel_y_diff == 0)
		pixel_x_diff = rand(-3,3)
		pixel_y_diff = rand(-3,3)

	animate(H, pixel_x = H.pixel_x + pixel_x_diff, pixel_y = H.pixel_y + pixel_y_diff, time = 2)
	animate(H, pixel_x = initial(H.pixel_x), pixel_y = initial(H.pixel_y), time = 2)

/decl/interaction/sex/handle_other(mob/living/carbon/human/H, mob/living/carbon/human/P)
	if(H.lust >= H.max_lust) 
		cum(H, P, hole)

	if(P.lust >= P.max_lust) 
		cum(P, H, null)

	H.lust += 10 * rand(0.4,0.9)
	P.lust += 10 * rand(0.4,0.9)

	moan(H)
	moan(P)

	animate_with(H,P)

	if(istype(P.loc, /obj/structure/closet)) 
		playsound(get_turf(P), 'sound/effects/clang.ogg', 50, 0, 0)

/decl/interaction/sex/vaginal
	interact_name = "Fuck their pussy"
	interact_flags_partner = INTERACT_VAGINAL
	interact_sound = list(
		'starlight/mods/content/interaction/sound/bang4.ogg',
		'starlight/mods/content/interaction/sound/bang5.ogg',
		'starlight/mods/content/interaction/sound/bang6.ogg'
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
		'starlight/mods/content/interaction/sound/oral1.ogg', 
		'starlight/mods/content/interaction/sound/oral2.ogg'
	)
	hole = INTERACT_MOUTH

/decl/interaction/sex/oral/get_message(mob/living/carbon/human/H, mob/living/carbon/human/P)
	return "<b>\The [H]</b> [pick("forces their cock inside <b>\the [P]</b>'s throat", "shoves their cock deep inside <b>\the [P]</b>'s mouth", "roughly fucks <b>\the [P]</b> in the mouth")]"

/decl/interaction/sex/oral/handle_other(mob/living/carbon/human/H, mob/living/carbon/human/P)
	if(H.lust >= H.max_lust) 
		cum(H,P,hole)

	if(P.lust >= P.max_lust) 
		cum(P, H, null)

	H.lust += 10 * rand(0.4, 0.9)

	moan(H)
	animate_with(H,P)

	P.muzzled_until = world.time + (10 SECONDS)

/decl/interaction/sex/oral/blowjob
	interact_name = "Suck them off"
	interact_flags = INTERACT_HANDS | INTERACT_CONSCIOUS | INTERACT_CUFFED | INTERACT_MOUTH
	interact_flags_partner = INTERACT_PENIS
	interact_sound = list(
		'starlight/mods/content/interaction/sound/bj1.ogg',
		'starlight/mods/content/interaction/sound/bj2.ogg',
		'starlight/mods/content/interaction/sound/bj3.ogg',
		'starlight/mods/content/interaction/sound/bj4.ogg',
		'starlight/mods/content/interaction/sound/bj5.ogg',
		'starlight/mods/content/interaction/sound/bj6.ogg',
		'starlight/mods/content/interaction/sound/bj7.ogg',
		'starlight/mods/content/interaction/sound/bj8.ogg',
		'starlight/mods/content/interaction/sound/bj9.ogg',
		'starlight/mods/content/interaction/sound/bj10.ogg',
		'starlight/mods/content/interaction/sound/bj11.ogg'
	)

/decl/interaction/sex/oral/blowjob/get_message(mob/living/carbon/human/H, mob/living/carbon/human/P)
	return "<b>[H]</b> [pick("sucks <b>\the [P]</b>'s cock", "sucks <b>\the [P]</b> off")]"

/decl/interaction/sex/oral/blowjob/handle_other(mob/living/carbon/human/H, mob/living/carbon/human/P)
	if(P.lust >= P.max_lust) 
		cum(P, H, hole)
	
	if(H.lust >= H.max_lust) 
		cum(H, P, null)

	P.lust += 10 * rand(0.4,0.9)

	moan(P)
	animate_with(P,H)

	H.muzzled_until = world.time + (5 SECONDS)
