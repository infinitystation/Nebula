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
	current_location = "nav_constellation_port_dock_shuttle"

/area/constellation/exploration_shuttle
	name       = "\improper Exploration Shuttle"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//In case multiple shuttles can dock at a location,
//subtypes can be used to hold the shuttle-specific data
/obj/effect/shuttle_landmark/docking_arm_starboard
	name = "Constellation Starboard-side Docking Arm"
	docking_controller = "constellation_starboard_dock"

/obj/effect/shuttle_landmark/docking_arm_starboard/pod
	landmark_tag = "nav_constellation_starboard_dock_pod"

/obj/effect/shuttle_landmark/docking_arm_port
	name = "Constellation Port-side Docking Arm"
	docking_controller = "constellation_dock_port"

/obj/effect/shuttle_landmark/docking_arm_port/shuttle
	landmark_tag = "nav_constellation_port_dock_shuttle"

/obj/effect/shuttle_landmark/below_deck_bow
	name = "Near Constellation Bow"
	landmark_tag = "nav_constellation_below_bow"

/obj/effect/shuttle_landmark/below_deck_starboardastern
	name = "Near Constellation Starboard Astern"
	landmark_tag = "nav_constellation_below_starboardastern"

// Essentially a bare platform that moves up and down.
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
