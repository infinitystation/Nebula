/mob/living/simple_animal/friendly/snek
	name = "snake"
	desc = "A cute snake that needs a little boop."
	icon = 'mods_infinity/content/infinity/datum/atom/mob/living/simple_animal/friendly/snek.dmi'
	icon_state = "snek"
	icon_living = "snek_dead"
	speak_emote = list("flicks")
	health = 20
	maxHealth = 20
	natural_weapon = /obj/item/natural_weapon/bite/weak
	response_help_3p = "$USER$ boops $TARGET$."
	response_help_1p = "You boop $TARGET$."
	response_disarm = "shoos"
	response_harm = "kicks"
	mob_size = MOB_SIZE_SMALL
	possession_candidate = TRUE
	can_escape = TRUE
	pass_flags = PASS_FLAG_TABLE
	density = FALSE

	meat_amount = 1
	bone_amount = 1
	skin_amount = 1
	skin_material = /decl/material/solid/skin/lizard
