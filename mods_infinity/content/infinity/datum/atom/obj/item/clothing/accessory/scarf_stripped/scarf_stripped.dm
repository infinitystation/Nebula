// Ported from AuroraBlue.
/obj/item/clothing/accessory/scarf_stripped
	name = "stripped scarf"
	desc = "A stylish stripped scarf. The perfect winter accessory for those with a keen fashion sense, and those who just can't handle a cold breeze on their necks."
	icon = 'mods_infinity/content/infinity/datum/atom/obj/item/clothing/accessory/scarf_stripped/scarf_stripped.dmi'
	blood_overlay_type = "maskblood"
	slot_flags = SLOT_FACE
	
	body_parts_covered = SLOT_FACE | SLOT_HEAD
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.9

/obj/item/clothing/accessory/scarf_stripped/random/Initialize()
	. = ..()
	color = get_random_colour()
