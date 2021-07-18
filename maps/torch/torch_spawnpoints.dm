var/global/list/latejoin_cryo_station_locations = list()

/obj/effect/landmark/latejoin/cryo_station/add_loc()
	global.latejoin_cryo_station_locations |= get_turf(src)

/decl/spawnpoint/cryo/station
	name = "Cryogenics Station Storage"
	msg = "has completed revival in the remote cryogenics station storage"
	disallow_job = list(/datum/job/robot)

/decl/spawnpoint/cryo/station/New()
	..()
	turfs = global.latejoin_cryo_station_locations

/datum/map/torch

	allowed_spawns = list(
		/decl/spawnpoint/cryo,
		/decl/spawnpoint/cryo/station
	)
	default_spawn = /decl/spawnpoint/cryo
