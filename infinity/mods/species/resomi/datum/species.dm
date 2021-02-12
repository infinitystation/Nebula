/decl/species/resomi
	name              = SPECIES_RESOMI
	name_plural       = "Resomii"
	description       = "A tiny birdy creature."
	hidden_from_codex = FALSE

	sexybits_location = BP_GROIN
	min_age           = 15
	max_age           = 45

	spawn_flags       = SPECIES_CAN_JOIN
	appearance_flags  = HAS_HAIR_COLOR | HAS_SKIN_COLOR | HAS_EYE_COLOR | HAS_A_SKIN_TONE | HAS_LIPS
	bump_flag         = MONKEY
	swap_flags        = MONKEY|SLIME|SIMPLE_ANIMAL
	push_flags        = MONKEY|SLIME|SIMPLE_ANIMAL|ALIEN
	limb_blend        = ICON_MULTIPLY
	tail_blend        = ICON_MULTIPLY

	icobase           = 'infinity/mods/species/resomi/icons/body.dmi'
	deform            = 'infinity/mods/species/resomi/icons/body.dmi'
	damage_overlays   = 'infinity/mods/species/resomi/icons/damage_overlay.dmi'
	damage_mask       = 'infinity/mods/species/resomi/icons/damage_mask.dmi'
	blood_mask        = 'infinity/mods/species/resomi/icons/blood_mask.dmi'
	preview_icon      = 'infinity/mods/species/resomi/icons/preview.dmi'
	husk_icon         = 'infinity/mods/species/resomi/icons/husk.dmi'
	tail_icon         = 'infinity/mods/species/resomi/icons/tail.dmi'
	tail              = "tail"
	tail_hair         = "feathers_s"

	base_color        = "#001144"
	flesh_color       = "#5f7bb0"
	blood_color       = "#d514f7"

	darksight_range   = 7
	darksight_tint    = DARKTINT_GOOD
	flash_mod         = 2

	total_health      = 150
	slowdown          = -1.5
	brute_mod         = 1.4
	burn_mod          =  1.4
	metabolism_mod    = 2.0
	mob_size          = MOB_SIZE_SMALL
	holder_type       = /obj/item/holder/human/resomi
	breath_pressure   = 8

	blood_volume      = 280
	body_temperature  = 314.15

	unarmed_attacks   = list(
		/decl/natural_attack/bite/sharp,
		/decl/natural_attack/claws,
		/decl/natural_attack/punch,
		/decl/natural_attack/stomp/weak
	)

	move_trail        = /obj/effect/decal/cleanable/blood/tracks/paw

	cold_level_1      = 180
	cold_level_2      = 130
	cold_level_3      = 70
	heat_level_1      = 320
	heat_level_2      = 370
	heat_level_3      = 600

	heat_discomfort_level = 294
	heat_discomfort_strings = list(
		"Your feathers prickle in the heat.",
		"You feel uncomfortably warm.",
	)
	cold_discomfort_level = 200
	cold_discomfort_strings = list(
		"You can't feel your paws because of the cold.",
		"You feel sluggish and cold.",
		"Your feathers bristle against the cold."
	)

	inherent_verbs = list(
		/mob/living/carbon/human/proc/resomi_sonar_ping,
		/mob/living/proc/toggle_pass_table
	)

	descriptors = list(
		/datum/mob_descriptor/height = -8,
		/datum/mob_descriptor/build = -8
	)

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_RESOMI_REFUGEE,
			CULTURE_RESOMI_NEWGENERATION,
			CULTURE_RESOMI_EREMUS,
			CULTURE_RESOMI_ASRANDA,
			CULTURE_RESOMI_LOSTCOLONYRICH,
			CULTURE_RESOMI_LOSTCOLONYPOOR,
			CULTURE_OTHER
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_RESOMI_BIRDCAGE,
			HOME_SYSTEM_RESOMI_EREMUS,
			HOME_SYSTEM_RESOMI_ASRANDA,
			HOME_SYSTEM_RESOMI_REFUGEE_COLONY,
			HOME_SYSTEM_RESOMI_LOST_COLONY,
			HOME_SYSTEM_RESOMI_HOMELESS,
			HOME_SYSTEM_RESOMI_SAVEEL,
			HOME_SYSTEM_OTHER
		),
		TAG_RELIGION =  list(
			RELIGION_RESOMI_CHOSEN,
			RELIGION_RESOMI_EMPEROR,
			RELIGION_RESOMI_SKIES,
			RELIGION_RESOMI_MOUNTAIN,
			RELIGION_OTHER
		)
	)

	has_organ = list(
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		BP_LUNGS =    /obj/item/organ/internal/lungs,
		BP_LIVER =    /obj/item/organ/internal/liver,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys,
		BP_BRAIN =    /obj/item/organ/internal/brain,
		BP_EYES =     /obj/item/organ/internal/eyes
	)

	override_organ_types = list(
		BP_EYES = /obj/item/organ/internal/eyes/resomi
	)

/decl/species/resomi/skills_from_age(age)
	switch(age)
		if(0 to 17)  . = -4
		if(18 to 25) . = 0
		if(26 to 35) . = 4
		else		 . = 8

/decl/species/resomi/get_surgery_overlay_icon(var/mob/living/carbon/human/H)
	return 'infinity/mods/species/resomi/icons/surgery.dmi'

/obj/item/holder/human/resomi
	icon = 'infinity/mods/species/resomi/icons/holder.dmi'
	w_class = ITEM_SIZE_LARGE

/obj/item/organ/internal/eyes/resomi
	eye_icon = 'infinity/mods/species/resomi/icons/eyes.dmi'
	icon_state = "eyes"

/decl/species/resomi/handle_post_species_pref_set(var/datum/preferences/pref)
	if(!pref) return
	LAZYINITLIST(pref.body_markings)
	if(!pref.body_markings["Feathers"]) pref.body_markings["Feathers"] = "#8888cc"