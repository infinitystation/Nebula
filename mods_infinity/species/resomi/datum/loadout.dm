/decl/loadout_category/xenowear
	name = "Xenowear"

/decl/loadout_option/resomi
	whitelisted = list(SPECIES_RESOMI)
	category = /decl/loadout_category/xenowear

//Uniforms

/decl/loadout_option/resomi/uniform_selection
	name = "resomi uniform selection"
	path = /obj/item/clothing/under/resomi
	slot = slot_w_uniform_str

/decl/loadout_option/resomi/uniform_selection/get_gear_tweak_options()
	. = ..()
	LAZYINITLIST(.[/datum/gear_tweak/path/specified_types_list])
	.[/datum/gear_tweak/path/specified_types_list] |= list(
		/obj/item/clothing/under/resomi/simple,
		/obj/item/clothing/under/resomi/rainbow,
		/obj/item/clothing/under/resomi/engine,
		/obj/item/clothing/under/resomi/medical,
		/obj/item/clothing/under/resomi/security,
		/obj/item/clothing/under/resomi/science,
		/obj/item/clothing/under/resomi/command,
		/obj/item/clothing/under/resomi/stylish_command,
		/obj/item/clothing/under/resomi/gray_utility,
		/obj/item/clothing/under/resomi/black_utility
	)

/decl/loadout_option/resomi/uniform_color
	name = "colorable resomi jumpsuit"
	path = /obj/item/clothing/under/resomi
	slot = slot_w_uniform_str
	flags = GEAR_HAS_COLOR_SELECTION

/decl/loadout_option/resomi/uniform_space
	name = "resomi pressure suit"
	path = /obj/item/clothing/under/resomi/space
	slot = slot_w_uniform_str

/decl/loadout_option/resomi/cloak_polychromic
	name = "resomi polychromic cloak"
	path = /obj/item/clothing/suit/storage/hooded/polychromic
	slot = slot_wear_suit_str
	flags = GEAR_HAS_COLOR_SELECTION

/decl/loadout_option/resomi/shoes
	name = "resomi footwear selection"
	path = /obj/item/clothing/shoes/resomi
	slot = slot_shoes_str
	flags = GEAR_HAS_COLOR_SELECTION

/decl/loadout_option/resomi/shoes/get_gear_tweak_options()
	. = ..()
	LAZYINITLIST(.[/datum/gear_tweak/path/specified_types_list])
	.[/datum/gear_tweak/path/specified_types_list] |= list(
		/obj/item/clothing/shoes/resomi/footwraps/socks,
		/obj/item/clothing/shoes/resomi/footwraps,
		/obj/item/clothing/shoes/resomi
	)

// toys
/decl/loadout_option/plush_toy/get_gear_tweak_options()
	. = ..()
	.[/datum/gear_tweak/path] |= list(
		"resomi brown plush" =  /obj/item/toy/plushie/resomi,
		"resomi black plush" = /obj/item/toy/plushie/resomi/black,
		"resomi yellow plush" = /obj/item/toy/plushie/resomi/yellow,
		"resomi white plush" = /obj/item/toy/plushie/resomi/white,
		"resomi grey plush" = /obj/item/toy/plushie/resomi/grey
	)