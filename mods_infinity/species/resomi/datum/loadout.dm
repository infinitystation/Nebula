/decl/loadout_option/resomi
	whitelisted   = list(SPECIES_RESOMI)
	category      = /decl/loadout_option/resomi
	slot          = slot_w_uniform_str

//Uniforms

/decl/loadout_option/resomi/uniform_selection
	name = "resomi uniform selection"
	path         = /obj/item/clothing/under/resomi

/decl/loadout_option/resomi/uniform_selection/Initialize()
	. = ..()
	var/list/uniforms = list()
	uniforms["grey smock"]        = /obj/item/clothing/under/resomi/simple
	uniforms["rainbow smock"]     = /obj/item/clothing/under/resomi/rainbow
	uniforms["engineering smock"] = /obj/item/clothing/under/resomi/engine
	uniforms["medical smock"]     = /obj/item/clothing/under/resomi/medical
	uniforms["security smock"]    = /obj/item/clothing/under/resomi/security
	uniforms["science smock"]     = /obj/item/clothing/under/resomi/science
	uniforms["command uniform"]   = /obj/item/clothing/under/resomi/command
	uniforms["stylish uniform"]   = /obj/item/clothing/under/resomi/stylish_command
	uniforms["gray uniform"]      =/obj/item/clothing/under/resomi/gray_utility
	uniforms["black uniform"]      =/obj/item/clothing/under/resomi/black_utility
	gear_tweaks += new /datum/gear_tweak/path(uniforms)

/decl/loadout_option/resomi/uniform_color
	name = "colorable resomi jumpsuit"
	path         = /obj/item/clothing/under/resomi
	flags        = GEAR_HAS_COLOR_SELECTION

/decl/loadout_option/resomi/space
	name = "resomi pressure suit"
	path         = /obj/item/clothing/under/resomi/space

/decl/loadout_option/resomi/polychromic_cloak
	name = "resomi polychromic cloak"
	path         = /obj/item/clothing/suit/storage/hooded/polychromic
	flags        = GEAR_HAS_COLOR_SELECTION
	slot         = slot_wear_suit_str

/decl/loadout_option/resomi/shoes
	name = "resomi footwear selection"
	path         = /obj/item/clothing/shoes/resomi
	flags        = GEAR_HAS_COLOR_SELECTION
	slot         = slot_shoes_str

/decl/loadout_option/resomi/shoes/Initialize()
	. = ..()
	var/list/footwear = list()
	footwear["koishi"]      = /obj/item/clothing/shoes/resomi/footwraps/socks_resomi
	footwear["footwraps"]    = /obj/item/clothing/shoes/resomi/footwraps
	footwear["small shoes"] = /obj/item/clothing/shoes/resomi
	gear_tweaks += new /datum/gear_tweak/path(footwear)

//toys

/decl/loadout_option/plush_toy/get_gear_tweak_options()
	. = ..()
	.[/datum/gear_tweak/path] |= list(
		"resomi brown plush" =  /obj/item/toy/plushie/resomi_plush,
		"resomi black plush" = /obj/item/toy/plushie/resomi_plush/black,
		"resomi yellow plush" = /obj/item/toy/plushie/resomi_plush/yellow,
		"resomi white plush" = /obj/item/toy/plushie/resomi_plush/white,
		"resomi grey plush" = /obj/item/toy/plushie/resomi_plush/grey
	)