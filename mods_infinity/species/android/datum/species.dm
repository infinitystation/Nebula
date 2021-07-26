/decl/species/utility_frame/android
	name = SPECIES_ANDROID
	name_plural = "Androids"
	description = "An advanced robotic being designed for better interaction with silicon lifeforms."

	primitive_form = SPECIES_FRAME
	strength = STR_MEDIUM

	brute_mod = 1.2
	burn_mod = 1.2

	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_TONE_NORMAL | HAS_LIPS | HAS_UNDERWEAR | HAS_EYE_COLOR
	inherent_verbs = list(/mob/living/carbon/human/proc/tie_hair)

	available_bodytypes = list(
		/decl/bodytype/human,
		/decl/bodytype/human/masculine
	)

	available_pronouns = list(
		/decl/pronouns,
		/decl/pronouns/female,
		/decl/pronouns/male
	)

/decl/species/utility_frame/android/get_blood_colour(var/mob/living/carbon/human/H)
	return COLOR_INDIGO

/decl/species/utility_frame/android/post_organ_rejuvenate(obj/item/organ/org, mob/living/carbon/human/H)
	var/obj/item/organ/external/E = org
	if(istype(E) && !BP_IS_PROSTHETIC(E))
		E.robotize(H.gender == FEMALE ? /decl/prosthetics_manufacturer/android : /decl/prosthetics_manufacturer/android/masculine)
	H.refresh_visible_overlays()

/decl/species/utility_frame/android/handle_post_species_pref_set(var/datum/preferences/pref)
	return

/obj/item/organ/internal/augment/active/cyberbrain/android_preset
	parent_organ = BP_HEAD

/decl/species/utility_frame/android/handle_post_spawn(mob/living/carbon/human/H)
	. = ..()
	new/obj/item/organ/internal/augment/active/cyberbrain/android_preset(H)

//Limbs

/decl/prosthetics_manufacturer/android
	name = "Android Covering (Feminine)"
	desc = "This high quality limb is nearly indistinguishable from an organic one."
	icon = 'icons/mob/human_races/species/human/body_female.dmi'
	skintone = TRUE
	species_restricted = list(SPECIES_FRAME)
	modular_prosthetic_tier = MODULAR_BODYPART_CYBERNETIC

/decl/prosthetics_manufacturer/android/masculine
	name = "Android Covering (Masculine)"
	icon = 'icons/mob/human_races/species/human/body_male.dmi'

//No designs there.. Too hi-tech for you.