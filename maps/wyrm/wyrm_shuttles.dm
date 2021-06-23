/obj/turbolift_map_holder/wyrm
	name = "Wyrm cargo elevator placeholder"
	depth = 2
	lift_size_x = 2
	lift_size_y = 2
	door_type =     null
	wall_type =     null
	firedoor_type = null
	light_type =    null
	floor_type =  /turf/simulated/floor/tiled/techfloor
	button_type = /obj/structure/lift/button/standalone
	panel_type =  /obj/structure/lift/panel/standalone
	areas_to_use = list(
		/area/turbolift/freightsub,
		/area/turbolift/freightmain
	)
	floor_departure_sound = 'sound/effects/lift_heavy_start.ogg'
	floor_arrival_sound =   'sound/effects/lift_heavy_stop.ogg'


/area/turbolift
	name = "\improper Turbolift"
	icon_state = "shuttle"
	requires_power = 0
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/turbolift/freightmain
	name = "Main Deck"
	base_turf = /turf/simulated/open

/area/turbolift/freightsub
	name = "Sub Deck"
	base_turf = /turf/simulated/floor/plating

/datum/shuttle/autodock/ferry/supply/drone
	name = "Supply Drone"
	location = 1
	warmup_time = 10
	shuttle_area = /area/supply/dock
	waypoint_offsite = "nav_cargo_start"
	waypoint_station = "nav_cargo_station"

/obj/effect/shuttle_landmark/supply/centcom
	name = "Centcom"
	landmark_tag = "nav_cargo_start"

/obj/effect/shuttle_landmark/supply/station
	name = "Hangar"
	landmark_tag = "nav_cargo_station"
	base_area = /area/supply/external
	base_turf = /turf/simulated/floor/reinforced

/area/shuttle/merchant/home
	name = "\improper Merchant Ship"

/datum/shuttle/autodock/ferry/merchant
	name = "Merchant"
	warmup_time = 10
	shuttle_area = /area/shuttle/merchant/home
	waypoint_station = "nav_merchant_start"
	waypoint_offsite = "nav_merchant_out"
	dock_target = "merchant_ship_dock"

/obj/effect/shuttle_landmark/merchant/start
	name = "Merchant Base"
	landmark_tag = "nav_merchant_start"
	docking_controller = "merchant_station_dock"

/obj/effect/shuttle_landmark/merchant/out
	name = "Docking Bay"
	landmark_tag = "nav_merchant_out"
	docking_controller = "lounge_dock"
