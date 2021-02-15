/obj/effect/overmap/visitable/sector/exoplanet/snow/labyrinth
	habitability_class = HABITABILITY_IDEAL
	free_landing = TRUE
	ruin_tags_whitelist = 1 //stub for no ruins
	possible_themes = list()
	map_generators = list(
		/datum/random_map/automata/cave_system/mountains/snow/labyrinth,
		/datum/random_map/noise/exoplanet/snow/labyrinth, 
		/datum/random_map/noise/ore/poor
	)

	initial_restricted_waypoints = list(
		"Exploration Shuttle" = list(
			"nav_labyrinth_dock"
		)
	)

/obj/effect/overmap/visitable/ship/landable/exploration_shuttle
	name    = "Exploration Shuttle"
	shuttle = "Exploration Shuttle"
