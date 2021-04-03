/datum/map/odyssey
	// Unit test exemptions
	apc_test_exempt_areas = list(
		/area/odyssey/maintenance = NO_SCRUBBER|NO_VENT,
		/area/space = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/odyssey/science/network_closet = NO_SCRUBBER|NO_VENT,
		/area/odyssey/engineering/substation = NO_SCRUBBER|NO_VENT,
		/area/odyssey/engineering/utility_shaft = NO_SCRUBBER|NO_VENT,
		/area/odyssey/security/weapons_bay/two = NO_APC,
		/area/odyssey/engineering/fuel_bay/co2 = NO_SCRUBBER,
		/area/odyssey/security/weapons_bay/three = NO_VENT|NO_SCRUBBER,
		/area/odyssey/command/ofd = NO_SCRUBBER|NO_VENT,
		/area/shuttle/escape_pod_1 = NO_APC,
		/area/shuttle/escape_pod_2 = NO_APC,
		/area/shuttle/escape_pod_3 = NO_APC,
		/area/shuttle/escape_pod_4 = NO_APC
	)

/obj/effect/landmark/map_data/odyssey
	height = 4
