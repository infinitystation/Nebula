var/list/latejoin_cryo_two = list()

/obj/effect/landmark/latejoin/cryo_two/add_loc()
	global.latejoin_cryo_two |= get_turf(src)

/datum/map/odyssey
	allowed_spawns = list("First Deck Cryogenic Storage", "Third Deck Cryogenic Storage")
	default_spawn = "Third Deck Cryogenic Storage"

/datum/spawnpoint/cryo
	display_name = "Third Deck Cryogenic Storage"
	msg = "has completed revival in the Third Deck cryogenics bay"

/datum/spawnpoint/cryo/two
	display_name = "First Deck Cryogenic Storage"
	msg = "has completed revival in the First Deck cryogenics bay"

/datum/spawnpoint/cryo/two/New()
	..()
	turfs = global.latejoin_cryo_two
