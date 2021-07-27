// The original authors of gator: 
// https://github.com/Whitesands13/Whitesands/pull/447
// https://github.com/vlggms/tegustation-bay12/pull/27
// Implementations belongs to authors above. The code below ported from tegustation-bay12.

/mob/living/simple_animal/hostile/retaliate/alligator
	name = "alligator"
	icon = 'mods_infinity/content/infinity/datum/atom/mob/living/simple_animal/hostile/retaliate/alligator.dmi'
	desc = "Thats an alligator. Probably shouldn't wrestle it."
	icon_state = "gator"
	icon_living = "gator"
	icon_dead = "gator_dead"
	turns_per_move = 5
	speak_emote = list("hisses", "snaps")
	response_help_3p = "$USER$ pets $TARGET$."
	response_help_1p = "You pet $TARGET$."
	response_disarm = "rolls over"
	response_harm = "kicks"
	a_intent = I_HURT
	health = 125
	maxHealth = 125
	speed = 5
	glide_size = 2
	natural_weapon = /obj/item/natural_weapon/bite/weak
	pry_time = 6 SECONDS
	pry_desc = "biting"
