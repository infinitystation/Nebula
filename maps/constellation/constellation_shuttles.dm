/obj/machinery/computer/shuttle_control/explore/exploration_shuttle
	name        = "exploration shuttle control console"
	shuttle_tag = "Exploration Shuttle"

/obj/effect/overmap/visitable/ship/landable/exploration_shuttle
	name    = "Exploration Shuttle"
	shuttle = "Exploration Shuttle"

/datum/shuttle/autodock/overmap/exploration_shuttle
	name = "Exploration Shuttle"
	shuttle_area = /area/constellation/exploration_shuttle
	dock_target = "constellation_shuttle"
	current_location = "nav_constellation_dock_cargo"

/area/constellation/exploration_shuttle
	name       = "\improper Exploration Shuttle"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//Shuttle Landmarks (Docking)

/obj/effect/shuttle_landmark/constellation/port_dock
	name = "Constellation Port Docking Arm"
	landmark_tag = "nav_constellation_dock_port"
	docking_controller = "constellation_dock_port"

/obj/effect/shuttle_landmark/constellation/starboard_dock 
	name = "Constellation Starboard Docking Arm"
	landmark_tag = "nav_constellation_dock_starboard"
	docking_controller = "constellation_dock_starboard"

/obj/effect/shuttle_landmark/constellation/cargo_dock
	name = "Constellation Cargo Dock"
	landmark_tag = "nav_constellation_dock_cargo"
	docking_controller = "cargo"

//Shuttle Landmarks (Misc)

/obj/effect/shuttle_landmark/constellation/port_bow
	name = "Constellation Port Bow"
	landmark_tag = "nav_constellation_port_bow"

/obj/effect/shuttle_landmark/constellation/starboard_bow
	name = "Constellation Starboard Bow"
	landmark_tag = "nav_constellation_starboard_bow"

// Essentially a bare platform that moves up and down. \\ the future is now, old man. it's an elevator now. '2021

/obj/turbolift_map_holder/constellation
	name = "Constellation cargo elevator placeholder"
	depth = 4
	lift_size_x = 3
	lift_size_y = 3
	door_type =     null
	wall_type =     null
	firedoor_type = null
	light_type =    null
	floor_type =  /turf/simulated/floor/tiled/steel_grid
	button_type = /obj/structure/lift/button/standalone
	panel_type =  /obj/structure/lift/panel/standalone
	areas_to_use = list(
		/area/turbolift/constellation/enclave,
		/area/turbolift/constellation/cargo,
		/area/turbolift/constellation/upper,
		/area/turbolift/constellation/roof
	)
	floor_departure_sound = 'sound/effects/lift_heavy_start.ogg'
	floor_arrival_sound =   'sound/effects/lift_heavy_stop.ogg'
