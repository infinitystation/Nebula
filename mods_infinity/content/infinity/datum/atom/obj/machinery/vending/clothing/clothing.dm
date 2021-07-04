/obj/machinery/vending/clothing
	name = "clothing vendor"
	desc = "A clothing vendor. It seems it can sell some clothes."
	icon = 'mods_infinity/content/infinity/datum/atom/obj/machinery/vending/clothing/clothing.dmi'
	icon_state = "clothing"
	icon_deny = "clothing-deny"
	icon_vend = "clothing-vend"

	product_slogans = "It's time for a new clothe-experience!;What? Never see that before?"

// Welcome to year 2021. Now Infinity tries to republish it's clothing from infinity tgstation to nebula!
/obj/machinery/vending/clothing/outerspace
	name = "\improper DesignerBoard"
	desc = "A Outerspace designer brand machine! For a truly style!"

	product_slogans = "It's time for a new clothe-experience!;What? Never see that before?;Stop right here! Outerspace designer here!"

	vend_delay = 20
	vend_reply = "Outerspace designer thanks you!"

	products = list(
		/obj/item/clothing/accessory/sweater_stripped = 5,
		/obj/item/clothing/accessory/scarf_stripped = 5
	)
