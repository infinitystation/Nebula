/obj/machinery/space_heater/wall
	name = "wall-mounted space heater"
	icon = 'infinity/mods/content/infinity/icons/obj/machinery/wall_heater.dmi'
	icon_state = "heater-off"
	anchored = TRUE
	density = FALSE
	heating_power = 120 KILOWATTS
	atom_flags = ATOM_FLAG_NO_TEMP_CHANGE

/obj/machinery/space_heater/wall/on_update_icon(var/rebuild_overlay = 0)
	if(!on)
		icon_state = "heater-off"
		set_light(0)
	else if(active > 0)
		icon_state = "heater-heat"
		set_light(0.7, 1, 2, 3, COLOR_SEDONA)
	else if(active < 0)
		icon_state = "heater-cool"
		set_light(0.7, 1, 2, 3, COLOR_DEEP_SKY_BLUE)
	else
		icon_state = "heater-standby"
		set_light(0)

	if(rebuild_overlay)
		cut_overlays()
		if(panel_open)
			add_overlay("heater-open")

/obj/machinery/space_heater/wall/on
	on = TRUE
