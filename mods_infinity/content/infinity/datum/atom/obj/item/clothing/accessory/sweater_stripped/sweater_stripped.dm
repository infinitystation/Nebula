// Ported from Infinity tgstation. Sprite by Inriss with additional changes by quardbreak.
/obj/item/clothing/accessory/sweater_stripped
	name = "worn sweater"
	desc = "The stripped sweater, also look better with cup of coffee."
	icon = 'mods_infinity/content/infinity/datum/atom/obj/item/clothing/accessory/sweater_stripped/sweater_stripped.dmi'
	blood_overlay_type = "suit"
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_OVER_BODY
	
	body_parts_covered = SLOT_UPPER_BODY | SLOT_ARMS | SLOT_LEGS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	valid_accessory_slots = list(ACCESSORY_SLOT_ARMBAND, ACCESSORY_SLOT_OVER)
	siemens_coefficient = 0.9
