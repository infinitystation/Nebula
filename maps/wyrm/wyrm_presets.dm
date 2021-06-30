/obj/structure/closet/secure_closet/engineering_tools
	name = "high-performance tools locker"
	closet_appearance = /decl/closet_appearance/secure_closet/engineering_tools
	req_access = list(access_engine_equip)

/obj/structure/closet/secure_closet/engineering_tools/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/rcd_ammo = 80, /obj/item/rcd_ammo/large = 20)),
		new/datum/atom_creator/weighted(list(/obj/item/rcd_ammo = 70, /obj/item/rcd_ammo/large = 30)),
		/obj/item/rcd_ammo = 2,
		/obj/item/rcd,
		/obj/item/rpd,
		/obj/item/paint_sprayer
	)

/decl/closet_appearance/secure_closet/engineering_tools
	color = COLOR_TITANIUM
	decals = list(
		"lower_half_solid"
	)
	extra_decals = list(
		"tool" = COLOR_BEASTY_BROWN,
	)

/obj/structure/closet/wardrobe/robotics_black/Initialize()
	. = ..()
	new /obj/item/clothing/under/roboticist(src)
	new /obj/item/clothing/under/roboticist(src)
	new /obj/item/clothing/suit/storage/toggle/labcoat/roboticist(src)
	new /obj/item/clothing/suit/storage/toggle/labcoat/roboticist(src)
	new /obj/item/clothing/shoes/color/black(src)
	new /obj/item/clothing/shoes/color/black(src)
	new /obj/item/clothing/gloves/thick(src)
	new /obj/item/clothing/gloves/thick(src)

/obj/structure/closet/secure_closet/wyrmresearcher
	name = "researchers' locker"
	closet_appearance = /decl/closet_appearance/secure_closet/wyrmresearcher
	req_access = list(access_engine_equip)

/obj/structure/closet/secure_closet/wyrmresearcher/WillContain()
	return list(
		/obj/item/clothing/under/polo/wyrm,
		/obj/item/clothing/under/research_director/rdalt,
		/obj/item/clothing/suit/storage/toggle/labcoat/chemist,
		/obj/item/clothing/suit/storage/toggle/labcoat/biologist,
		/obj/item/clothing/shoes/dress,
		/obj/item/clothing/shoes/dress,
		/obj/item/scanner/spectrometer,
		/obj/item/scanner/plant,
		/obj/item/disk/random
	)

/decl/closet_appearance/secure_closet/wyrmresearcher
	color = COLOR_OFF_WHITE
	decals = list()
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_GOLD,
		"stripe_vertical_left_full" = COLOR_PURPLE,
		"stripe_vertical_right_full" = COLOR_PURPLE,
		"research" = COLOR_CLOSET_GOLD
	)

/obj/structure/closet/secure_closet/wyrmcaptain
	name = "captain's locker"
	closet_appearance = /decl/closet_appearance/secure_closet/command
	req_access = list(access_captain)

/obj/structure/closet/secure_closet/wyrmcaptain/WillContain()
	return list(
		/obj/random/plushie,
		/obj/item/disk/secret_project,
		/obj/item/gun/energy/capacitor,
		/obj/item/clothing/shoes/dress,
		/obj/item/clothing/suit/storage/toggle/bomber,
		/obj/item/radio/headset/heads/captain,
		/obj/item/storage/fancy/cigar,
		/obj/item/flame/lighter/zippo/bronze
	)

/obj/structure/closet/secure_closet/wyrmmate
	name = "first mate's locker"
	closet_appearance = /decl/closet_appearance/secure_closet/command
	req_access = list(access_hop)

/obj/structure/closet/secure_closet/wyrmmate/WillContain()
	return list(
		/obj/item/gun/projectile/revolver,
		/obj/item/clothing/shoes/workboots,
		/obj/item/clothing/accessory/long/yellow,
		/obj/item/clothing/accessory/blue_clip,
		/obj/item/clothing/accessory/brown,
		/obj/item/clothing/accessory/red,
		/obj/item/clothing/suit/storage/det_trench,
		/obj/item/radio/headset/heads/hop/wyrm,
		/obj/item/modular_computer/tablet/preset/custom_loadout/advanced,
		/obj/random/clipboard
	)

/obj/structure/closet/secure_closet/militia
	name = "militia supplies locker"
	closet_appearance = /decl/closet_appearance/secure_closet/militia
	req_access = list(access_security)

/obj/structure/closet/secure_closet/militia/WillContain()
	return list(
		/obj/item/gun/energy/gun/secure,
		/obj/item/clothing/shoes/jackboots,
		/obj/item/clothing/accessory/armband/bluegold,
		/obj/item/clothing/suit/armor/pcarrier/blue,
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/accessory/storage/holster/hip,
		/obj/item/clothing/gloves/thick/duty,
		/obj/item/baton/loaded,
		/obj/item/storage/belt/holster/security
	)

/decl/closet_appearance/secure_closet/militia
	color = COLOR_GUNMETAL
	decals = list(
		"lower_holes"
	)
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_BABY_BLUE,
		"security" = COLOR_BABY_BLUE
	)

/obj/structure/closet/secure_closet/wyrmsec
	name = "security officer's locker"
	req_access = list(access_hos)
	closet_appearance = /decl/closet_appearance/secure_closet/wyrmsec

/obj/structure/closet/secure_closet/wyrmsec/WillContain()
	return list(
		/obj/item/clothing/under/guard/wyrm,
		/obj/item/clothing/suit/armor/pcarrier/blue,
		/obj/item/clothing/accessory/armor/plate/medium,
		/obj/item/clothing/head/helmet,
		/obj/item/clothing/accessory/armor/helmcover/blue,
		/obj/item/clothing/accessory/armband/bluegold,
		/obj/item/radio/headset/headset_com,
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/taperoll/police,
		/obj/item/shield/riot,
		/obj/item/storage/box/flashbangs,
		/obj/item/storage/belt/security,
		/obj/item/flash,
		/obj/item/baton/loaded,
		/obj/item/gun/energy/gun,
		/obj/item/clothing/accessory/storage/holster/waist,
		/obj/item/telebaton
	)

/decl/closet_appearance/secure_closet/wyrmsec
	color = COLOR_GUNMETAL
	decals = list(
		"lower_holes"
	)
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_BABY_BLUE,
		"stripe_vertical_right_full" = COLOR_GOLD,
		"security" = COLOR_BABY_BLUE
	)

/obj/effect/floor_decal/corner/gold
	name = "gold corner"
	color = COLOR_GOLD

/obj/effect/floor_decal/corner/gold/diagonal
	icon_state = "corner_white_diagonal"

/obj/effect/floor_decal/corner/gold/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/effect/floor_decal/corner/gold/full
	icon_state = "corner_white_full"

/obj/effect/floor_decal/corner/gold/border
	icon_state = "bordercolor"

/obj/effect/floor_decal/corner/gold/half
	icon_state = "bordercolorhalf"

/obj/effect/floor_decal/corner/gold/mono
	icon_state = "bordercolormonofull"

/obj/effect/floor_decal/corner/gold/bordercorner
	icon_state = "bordercolorcorner"

/obj/effect/floor_decal/corner/gold/bordercorner2
	icon_state = "bordercolorcorner2"

/obj/effect/floor_decal/corner/gold/borderfull
	icon_state = "bordercolorfull"

/obj/effect/floor_decal/corner/gold/bordercee
	icon_state = "bordercolorcee"

/obj/effect/floor_decal/industrial/danger
	icon_state = "danger"

/obj/effect/floor_decal/industrial/danger/corner
	icon_state = "dangercorner"

/turf/simulated/floor/plating/airless
	initial_gas = null

/decl/item_modifier/space_suit/salvage
	name = "Salvage"
	type_setups = list(
		/obj/item/clothing/head/helmet/space/void = /obj/item/clothing/head/helmet/space/void/engineering/salvage,
		/obj/item/clothing/suit/space/void =        /obj/item/clothing/suit/space/void/engineering/salvage
	)

/obj/machinery/suit_cycler/salvage
	name = "salvaged suit cycler"
	model_text = "Engineering"
	initial_access = list()
	suit = /obj/item/clothing/suit/space/void/engineering/salvage
	helmet = /obj/item/clothing/head/helmet/space/void/engineering/salvage
	boots = /obj/item/clothing/shoes/magboots
	available_modifications = list(
		/decl/item_modifier/space_suit/salvage
	)

/obj/machinery/light/small/d_green
	light_type = /obj/item/light/bulb/d_green

/obj/item/light/bulb/d_green
	color = "#4b734b"
	b_color = "#4b734b"
	b_power = 1
	b_range = 5

/decl/material/solid/metal/aluminium/orange
	name = "orange-painted aluminium"
	lore_text = "A low-density ductile metal with a silvery-white sheen. This one painted with orange color."
	color = "#ff7900"

/obj/structure/railing/mapped/wyrm
	material = /decl/material/solid/metal/aluminium/orange
