/obj/machinery/space_heater/wall
	name = "wall-mounted space heater"
	icon = 'mods_infinity/content/starlight/datum/atom/obj/machinery/wall_heater/wall_heater.dmi'
	icon_state = "heater-off"
	anchored = TRUE
	density = FALSE
	heating_power = 120 KILOWATTS
	atom_flags = ATOM_FLAG_NO_TEMP_CHANGE
	base_type = /obj/machinery/space_heater/wall

/obj/machinery/space_heater/wall/on_update_icon(var/rebuild_overlay = 0)
	if(!on)
		icon_state = "heater-off"
		set_light(0)
	else if(active > 0)
		icon_state = "heater-heat"
		set_light(3, 1, COLOR_SEDONA)
	else if(active < 0)
		icon_state = "heater-cool"
		set_light(3, 1, COLOR_DEEP_SKY_BLUE)
	else
		icon_state = "heater-standby"
		set_light(0)

	if(rebuild_overlay)
		cut_overlays()
		if(panel_open)
			add_overlay("heater-open")

/obj/machinery/space_heater/wall/on
	on = TRUE

/obj/item/stock_parts/circuitboard/space_heater/wall
	name = "circuitboard (wall-mounted space heater)"
	build_path = /obj/machinery/space_heater/wall

/datum/fabricator_recipe/imprinter/circuit/space_heater_wall
	path = /obj/item/stock_parts/circuitboard/space_heater/wall
