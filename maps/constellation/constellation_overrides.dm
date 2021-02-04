//evac
/datum/evacuation_option/abandon_ship
	abandon_ship = FALSE

/obj/machinery/suit_cycler
	initial_access = list()

/obj/machinery/suit_cycler/constellation
	buildable = FALSE

	helmet = /obj/item/clothing/head/helmet/space/void/engineering
	suit = /obj/item/clothing/suit/space/void/engineering
	boots = /obj/item/clothing/shoes/magboots

/obj/machinery/suit_cycler/constellation/salvage
	helmet = /obj/item/clothing/head/helmet/space/void/engineering/salvage
	suit = /obj/item/clothing/suit/space/void/engineering/salvage
