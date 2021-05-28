/obj/effect/overmap/visitable/ship/constellation
	name = "Constellation"
	color = "#00ffff"
	vessel_mass = 2800
	max_speed = 1/(2 SECONDS)
	burn_delay = 2 SECONDS

	initial_generic_waypoints = list(
		"nav_constellation_dock_port",
		"nav_constellation_dock_starboard",
		"nav_constellation_port_bow",
		"nav_constellation_starboard_bow"
	)
	initial_restricted_waypoints = list(
		/datum/shuttle/autodock/overmap/exploration_shuttle = list("nav_constellation_dock_cargo")
	)
