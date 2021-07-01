// "Stargazer" pressure/space suit

/obj/item/clothing/head/helmet/space/void/stargazer
	name = "stargazer suit helmet"
	desc = "Quite heavy spacesuit helmet plated with durable metal alloy. Insides are encrusted with soft polymer cotton and wide green visor."
	icon = 'mods_infinity/content/infinity/datum/atom/obj/item/clothing/stargazer/helmet.dmi'

	armor = list(
		melee = ARMOR_MELEE_VERY_HIGH,
		bullet = ARMOR_BALLISTIC_AP,
		laser = ARMOR_LASER_RIFLES,
		bomb = ARMOR_BOMB_SHIELDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE
	max_pressure_protection = FIRESUIT_MAX_PRESSURE
	siemens_coefficient = 0

/obj/item/clothing/suit/space/void/stargazer
	name = "stargazer suit"
	desc = "Bulky pressure suit with shiny plates and high-power hydraulics. Though it's comfy inside, it's very hard to move while wearing it. Can only fit an oxygen tank or suit cooler. Guaraanteed not to breach, exposing tasty flesh inside to the hungry vacuum of space."
	icon = 'mods_infinity/content/infinity/datum/atom/obj/item/clothing/stargazer/suit.dmi'

	armor = list(
		melee = ARMOR_MELEE_VERY_HIGH,
		bullet = ARMOR_BALLISTIC_AP,
		laser = ARMOR_LASER_RIFLES,
		bomb = ARMOR_BOMB_SHIELDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	max_pressure_protection = FIRESUIT_MAX_PRESSURE
	siemens_coefficient = 0

	can_breach = FALSE
	allowed = list(/obj/item/tank,/obj/item/suit_cooling_unit)

/obj/item/clothing/suit/space/void/stargazer/Initialize()
	. = ..()
	LAZYSET(slowdown_per_slot, slot_wear_suit_str, 8)

/obj/item/clothing/suit/space/void/stargazer/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/stargazer
	boots = /obj/item/clothing/shoes/magboots
