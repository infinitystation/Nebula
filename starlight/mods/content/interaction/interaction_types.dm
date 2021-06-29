/decl/interaction/headpat
	interact_name = "Pat their head"
	interact_flags = INTERACT_HANDS | INTERACT_CONSCIOUS | INTERACT_CUFFED
	interact_sound = 'starlight/mods/content/interaction/sound/hug.ogg'

/decl/interaction/headpat/get_message(mob/living/carbon/human/H, mob/living/carbon/human/P)
	return "<b>\The [H]</b> pats <b>\the [P]</b> on the head"

/decl/interaction/slap
	interact_name = "Slap their ass"
	interact_flags = INTERACT_HANDS | INTERACT_CONSCIOUS | INTERACT_CUFFED
	interact_sound = 'starlight/mods/content/interaction/sound/slap.ogg'
	interact_color_button = COLOR_RED
	interact_color_text = COLOR_RED

/decl/interaction/slap/get_message(mob/living/carbon/human/H, mob/living/carbon/human/P)
	return "<b>\The [H]</b> slaps <b>\the [P]</b>'s ass"

/decl/interaction/wave
	interact_name = "Wave"
	interact_flags = INTERACT_HANDS | INTERACT_CONSCIOUS | INTERACT_CUFFED
	interact_range = 0

/decl/interaction/wave/get_message(mob/living/carbon/human/H, mob/living/carbon/human/P)
	return "<b>\The [H]</b> waves to <b>\the [P]</b>"
