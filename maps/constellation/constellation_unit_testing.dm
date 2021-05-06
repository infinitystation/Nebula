/datum/unit_test/station_wires_shall_be_connected
	exceptions = list(list(48, 54, 3, EAST))

/datum/map/constellation
	// Unit test exemptions
	apc_test_exempt_areas = list(
		/area/turbolift = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/space = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/constellation/crew/hallway/port = NO_SCRUBBER|NO_VENT,
		/area/constellation/crew/hallway/starboard = NO_SCRUBBER|NO_VENT,
		/area/constellation/maintenance/hallway = NO_SCRUBBER|NO_VENT,
		/area/constellation/maintenance/lower = NO_SCRUBBER|NO_VENT,
		/area/constellation/escape_port = NO_SCRUBBER|NO_VENT,
		/area/constellation/escape_star = NO_SCRUBBER|NO_VENT,
		/area/constellation/engineering/atmos = NO_SCRUBBER
	)

	area_coherency_test_subarea_count = list(
		/area/constellation/crew/hallway/port = 2
	)

/obj/effect/landmark/map_data/constellation
	height = 4
