/obj/effect/overmap/visitable/sector/exoplanet/volcanic/labyrinth
	free_landing = TRUE
	ruin_tags_whitelist = 1 //stub for no ruins
	possible_themes = list()
	map_generators = list(
		/datum/random_map/automata/cave_system/mountains/volcanic/labyrinth,
		/datum/random_map/noise/exoplanet/volcanic/labyrinth,
		/datum/random_map/noise/ore/filthy_rich
	)

	initial_restricted_waypoints = list(
		/datum/shuttle/autodock/overmap/exploration_shuttle = list(
			"nav_labyrinth_dock"
		)
	)

/obj/effect/overmap/visitable/sector/exoplanet/snow/labyrinth/generate_habitability()
	habitability_class = HABITABILITY_IDEAL

/obj/effect/overmap/visitable/ship/landable/exploration_shuttle
	name    = "Exploration Shuttle"
	shuttle = "Exploration Shuttle"
