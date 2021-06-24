//Areas

/area/shuttle/hatchling
	name = "\improper Hatchling"
	icon_state = "shuttlered"
	requires_power = TRUE

/area/shuttle/rescue
	name = "\improper Rescue Pod"
	icon_state = "shuttlered"
	requires_power = TRUE

/obj/effect/overmap/visitable/ship/wyrm
	name = "ISC Wyrm"
	vessel_mass = 3000
	max_speed = 1/(4 SECONDS)
	burn_delay = 2 SECONDS
	fore_dir = WEST

	initial_generic_waypoints = list(
		"wyrm_prim_fore",
		"wyrm_prim_star",
		"wyrm_prim_port",
		"wyrm_prim_aft",
		"wyrm_sub_fore",
		"wyrm_sub_star",
		"wyrm_sub_port",
		"wyrm_sub_aft"
	)

	initial_restricted_waypoints = list(
		/datum/shuttle/autodock/overmap/hatchling = list("wyrm_docked_hatchling"),
		/datum/shuttle/autodock/overmap/rescue = list("wyrm_docked_rescue")
	)

/obj/effect/shuttle_landmark/wyrm/primary/fore
	name = "Primary Deck - Fore"
	landmark_tag = "wyrm_prim_fore"

/obj/effect/shuttle_landmark/wyrm/primary/star
	name = "Primary Deck - Starboard"
	landmark_tag = "wyrm_prim_star"

/obj/effect/shuttle_landmark/wyrm/primary/port
	name = "Primary Deck - Portside"
	landmark_tag = "wyrm_prim_port"

/obj/effect/shuttle_landmark/wyrm/primary/aft
	name = "Primary Deck - Aft"
	landmark_tag = "wyrm_prim_aft"

/obj/effect/shuttle_landmark/wyrm/sub/fore
	name = "Sub Deck - Fore"
	landmark_tag = "wyrm_sub_fore"

/obj/effect/shuttle_landmark/wyrm/sub/star
	name = "Sub Deck - Starboard"
	landmark_tag = "wyrm_sub_star"

/obj/effect/shuttle_landmark/wyrm/sub/port
	name = "Sub Deck - Portside"
	landmark_tag = "wyrm_sub_port"

/obj/effect/shuttle_landmark/wyrm/sub/aft
	name = "Sub Deck - Aft"
	landmark_tag = "wyrm_sub_aft"

/obj/effect/shuttle_landmark/merchant/out
	name = "Large Docking Port"
	landmark_tag = "nav_merchant_out"
	docking_controller = "lounge_dock"

//Hatchling
/obj/effect/overmap/visitable/ship/landable/hatchling
	name = "Hatchling"
	shuttle = "Hatchling"
	fore_dir = WEST
	sector_flags = OVERMAP_SECTOR_KNOWN

/datum/shuttle/autodock/overmap/hatchling
	name = "Hatchling"
	move_time = 10 SECONDS
	shuttle_area = /area/shuttle/hatchling
	dock_target = "hatchling_dock"
	current_location = "wyrm_docked_hatchling"

/obj/machinery/computer/shuttle_control/explore/hatchling
	name = "Hatchling Control Console"
	shuttle_tag = "Hatchling"

/obj/effect/shuttle_landmark/wyrm/docked/hatchling
	name = "Large Docking Port"
	landmark_tag = "wyrm_docked_hatchling"
	docking_controller = "wyrm_docking_hatch"

//Backup shuttle
/datum/shuttle/autodock/overmap/rescue
	name = "Rescue Pod"
	move_time = 30
	shuttle_area = /area/shuttle/rescue
	current_location = "wyrm_docked_rescue"

/obj/machinery/computer/shuttle_control/explore/rescue
	name = "Rescue Pod Control"
	shuttle_tag = "Rescue Pod"

/obj/effect/shuttle_landmark/wyrm/docked/rescue
	name = "Small Docking Port"
	landmark_tag = "wyrm_docked_rescue"