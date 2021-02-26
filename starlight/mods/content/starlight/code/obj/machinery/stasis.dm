//sleeping pod (stasis)
/obj/machinery/sleeper/stasis
	name            = "sleeping pod"
	desc            = "Comfortable capsule fitted with high-power stasis field generators."
	icon_state      = "pod"
	stasis_power    = 100
	base_type       = /obj/machinery/sleeper/stasis

/obj/machinery/sleeper/stasis/add_reagent_canister(var/mob/user, var/obj/item/chems/chem_disp_cartridge/canister)
	to_chat(user, SPAN_WARNING("\The [src] can't be loaded with chemical canisters!"))
	return FALSE

/obj/machinery/sleeper/stasis/on_update_icon()
	overlays.Cut()
	icon_state = "pod"
	if(occupant)
		var/image/pickle  = new
		pickle.appearance = occupant
		pickle.layer      = FLOAT_LAYER
		pickle.pixel_z    = 12
		overlays += pickle
	var/image/I   = image(icon, "lid[!!(occupant && !(stat & (BROKEN|NOPOWER)))]")
	overlays     += I
	if(operable() && occupant)
		set_light(1, 0.1, 1, 1.5, COLOR_WHITE)
		return
	set_light(0)

/obj/item/stock_parts/circuitboard/sleeper/stasis
	name           = "circuitboard (sleeping pod)"
	build_path     = /obj/machinery/sleeper/stasis
	req_components = list(
		/obj/item/stock_parts/scanning_module = 2, 
		/obj/item/stock_parts/manipulator = 2
	)

/datum/fabricator_recipe/imprinter/circuit/stasis
	path = /obj/item/stock_parts/circuitboard/sleeper/stasis
