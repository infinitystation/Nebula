//Weapons

/datum/gear/utility/sidearm
	display_name = "sidearm selection"
	cost = 6
	path = /obj/item/gun

/datum/gear/utility/sidearm/get_gear_tweak_options()
	. = ..()
	LAZYINITLIST(.[/datum/gear_tweak/path])
	.[/datum/gear_tweak/path] |= list(
		"pistol" = /obj/item/gun/projectile/pistol/random,
		"lasvolver" = /obj/item/gun/projectile/revolver/lasvolver
	)

//Masks

/datum/gear/utility/mask
	display_name = "gas mask selection"
	cost = 2
	path = /obj/item/clothing/mask
	slot = slot_wear_mask_str

/datum/gear/utility/mask/get_gear_tweak_options()
	. = ..()
	LAZYINITLIST(.[/datum/gear_tweak/path])
	.[/datum/gear_tweak/path] |= list(
		"full mask" = /obj/item/clothing/mask/gas,
		"half mask" = /obj/item/clothing/mask/gas/half
	)