// "Stargazer" pressure/space suit

/obj/item/clothing/head/helmet/space/void/stargazer
	name = "stargazer suit helmet"
	desc = "Quite heavy spacesuit helmet plated with durable metal alloy. Insides are encrusted with soft polymer cotton and wide green visor."
	icon = 'starlight/mods/content/starlight/datum/atom/obj/item/clothing/stargazer/helmet.dmi'

	armor = list(
		melee = ARMOR_MELEE_VERY_HIGH,
		bullet = ARMOR_BALLISTIC_RIFLE,
		laser = ARMOR_LASER_HANDGUNS,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	max_pressure_protection = FIRESUIT_MAX_PRESSURE
	siemens_coefficient = 0.1

/obj/item/clothing/suit/space/void/stargazer
	name = "stargazer suit"
	desc = "Bulky pressure suit with shiny plates and high-power hydraulics. Though it's comfy inside, it's very hard to move while wearing it. Can only fit an oxygen tank or suit cooler. Guaraanteed not to breach, exposing tasty flesh inside to the hungry vacuum of space."
	icon = 'starlight/mods/content/starlight/datum/atom/obj/item/clothing/stargazer/suit.dmi'

	armor = list(
		melee = ARMOR_MELEE_VERY_HIGH,
		bullet = ARMOR_BALLISTIC_RIFLE,
		laser = ARMOR_LASER_HANDGUNS,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	max_pressure_protection = FIRESUIT_MAX_PRESSURE
	siemens_coefficient = 0.1

	can_breach = FALSE
	allowed = list(/obj/item/tank,/obj/item/suit_cooling_unit)

/obj/item/clothing/suit/space/void/stargazer/Initialize()
	. = ..()
	LAZYSET(slowdown_per_slot, slot_wear_suit_str, 6)

/obj/item/clothing/suit/space/void/stargazer/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/stargazer
	boots = /obj/item/clothing/shoes/magboots
