/datum/map/wyrm

	apc_test_exempt_areas = list(
		/area/wyrm/command/aiatmos =           NO_SCRUBBER|NO_VENT,
		/area/wyrm/supply/external =           NO_SCRUBBER|NO_VENT,
		/area/space =                     NO_SCRUBBER|NO_VENT|NO_APC,
		/area/wyrm/engineering/extsubmaint =   NO_SCRUBBER,
		/area/wyrm/engineering/teg =           NO_SCRUBBER|NO_VENT,
		/area/wyrm/engineering/externalmaint = NO_SCRUBBER,
		/area/wyrm/engineering/atmos =         NO_SCRUBBER|NO_VENT,
		/area/wyrm/engineering/atmosmon =      NO_SCRUBBER|NO_VENT,
		/area/pod/start =                 NO_SCRUBBER|NO_VENT,
		/area/wyrm/maintenance/construction =  NO_APC,
		/area/wyrm/maintenance/primary/fp =    NO_SCRUBBER|NO_VENT,
		/area/wyrm/maintenance/primary/engp =  NO_SCRUBBER|NO_VENT|NO_APC,
		/area/wyrm/maintenance/primary/fs =    NO_SCRUBBER|NO_VENT,
		/area/wyrm/maintenance/primary/sec =   NO_SCRUBBER|NO_VENT,
		/area/wyrm/maintenance/primary/engs =  NO_SCRUBBER|NO_VENT,
		/area/wyrm/maintenance/sub/fore =      NO_SCRUBBER|NO_VENT,
		/area/holodeck =                  NO_SCRUBBER|NO_VENT|NO_APC,
		/area/turbolift/freightsub =      NO_SCRUBBER|NO_VENT|NO_APC,
		/area/turbolift/freightmain =     NO_SCRUBBER|NO_VENT|NO_APC,
		/area/shuttle/rescue =            NO_SCRUBBER,
		/area/exoplanet =                 NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet/desert =          NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet/grass =           NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet/snow =            NO_SCRUBBER|NO_VENT|NO_APC
	)

/datum/unit_test/station_wires_shall_be_connected
	exceptions = list(
		list(164, 140, 1, NORTH),
		list(165, 141, 1, WEST)
	)
