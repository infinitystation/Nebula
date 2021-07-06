var/global/list/latejoin_cryo_captain = list()
var/global/list/latejoin_cryo_two = list()

/datum/map/wyrm
	allowed_spawns = list("Secondary Cryogenic Bay", "Primary Cryogenic Bay", "Robot Storage", "Captain Compartment")
	default_spawn = "Secondary Cryogenic Bay"

/decl/spawnpoint/cryo
	name = "Secondary Cryogenic Bay"
	msg = "has completed revival in the secondary cryogenics bay"
	disallow_job = list(/datum/job/wyrm/miscellaneous/robot)

/obj/effect/landmark/latejoin/cryo_captain/add_loc()
	global.latejoin_cryo_captain |= get_turf(src)

/decl/spawnpoint/cryo/captain
	name = "Captain Compartment"
	msg = "has completed revival in the captain compartment"
	restrict_job = list(/datum/job/wyrm/command/captain)

/decl/spawnpoint/cryo/captain/New()
	..()
	turfs = global.latejoin_cryo_captain

/obj/effect/landmark/latejoin/cryo_two/add_loc()
	global.latejoin_cryo_two |= get_turf(src)

/decl/spawnpoint/cryo/two
	name = "Primary Cryogenic Bay"
	msg = "has completed revival in the primary cryogenics bay"
	disallow_job = list(/datum/job/wyrm/miscellaneous/robot)

/decl/spawnpoint/cryo/two/New()
	..()
	turfs = global.latejoin_cryo_two

/obj/effect/landmark/start/ai
	name = "AI"

/obj/effect/landmark/start/ai/Initialize()
	. = ..()
	//The job subsystem does its thing before we can, so we've got to handle this
	empty_playable_ai_cores += new /obj/structure/aicore/deactivated(get_turf(loc))
