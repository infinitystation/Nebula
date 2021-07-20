#define IC_MAX_SIZE_BASE 25
#define IC_COMPLEXITY_BASE 75

/obj/item/electronic_assembly/exo
	name = "exosuit assembly"
	icon_state = "setup_large"
	desc = "It's a case, for building large electronics with."
	w_class = ITEM_SIZE_LARGE
	max_components = IC_MAX_SIZE_BASE * 3.2
	max_complexity = IC_COMPLEXITY_BASE * 3.2
	health = 30

/obj/item/electronic_assembly/exosuit/frame
	name = "type-a exosuit electronic assembly"
	icon_state = "tesla"
	desc = "It's a case, for building large electronics with. This one resembles a box, or some type of rack for weapon."
	circuit_flags = IC_FLAG_CAN_FIRE

/obj/item/mech_equipment/mounted_system/circuit
	name = "exosuit circuit rack"
	holding_type = null
	desc = "A DIY circuit rack for exosuit. Circuitry not included."
	restricted_hardpoints = list(HARDPOINT_LEFT_SHOULDER, HARDPOINT_RIGHT_SHOULDER)
	restricted_software = list(MECH_SOFTWARE_UTILITY)

/obj/item/mech_equipment/mounted_system/circuit/attackby(obj/item/W, mob/user)
	if(isCrowbar(W))
		if(holding)
			holding.canremove = TRUE
			holding.dropInto(loc)
			holding = null
			playsound(src, 'sound/items/Crowbar.ogg', 50, 1)
		else 
			to_chat(user, SPAN_WARNING("The frame is empty!"))

	else if(istype(W, /obj/item/electronic_assembly/exosuit/frame))
		if(holding)
			to_chat(user, SPAN_WARNING("There's already an assembly in there."))
		else if(user.unEquip(W, src))
			holding = W
			holding.canremove = FALSE
			playsound(src, 'sound/items/Crowbar.ogg', 50, 1)

/datum/fabricator_recipe/industrial/exosuit
	path = /obj/item/mech_equipment/mounted_system/circuit

#undef IC_MAX_SIZE_BASE
#undef IC_COMPLEXITY_BASE
