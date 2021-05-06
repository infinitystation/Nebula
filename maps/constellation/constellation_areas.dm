/area/constellation
	name = "\improper Constellation"
	ambience = list(
		'sound/ambience/ambigen3.ogg',
		'sound/ambience/ambigen4.ogg',
		'sound/ambience/ambigen5.ogg',
		'sound/ambience/ambigen6.ogg',
		'sound/ambience/ambigen7.ogg',
		'sound/ambience/ambigen8.ogg',
		'sound/ambience/ambigen9.ogg',
		'sound/ambience/ambigen10.ogg',
		'sound/ambience/ambigen11.ogg',
		'sound/ambience/ambigen12.ogg'
	)

/datum/event/prison_break/medical
	areaType = list(/area/constellation/medical)

/datum/event/prison_break/science
	areaType = list(/area/constellation/livestock)

/datum/event/prison_break/station
	areaType = list(/area/constellation/brig)

/*
please do not remove my messages. they just look fancy to sort these areas. i rly dont like previous file. i know that it was sorted by area placement but..
*/

//Crew/Civilian

/area/constellation/crew
	name = "Crew Compartments"
	icon_state = "crew_quarters"

/area/constellation/crew/hallway/port
	name = "Crew Hallway - Port"

/area/constellation/crew/hallway/starboard
	name = "Crew Hallway - Starboard"

/area/constellation/crew/kitchen
	name = "Kitchen"
	icon_state = "kitchen"

/area/constellation/crew/hydro
	name = "Hydroponics"
	icon_state = "green"

/area/constellation/crew/dorms1
	name = "Sleep Capsule"
	icon_state = "green"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/constellation/crew/dorms2
	name = "Crew Cabin"
	icon_state = "purple"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/constellation/crew/saloon
	name = "Saloon"
	icon_state = "conference"

/area/constellation/crew/library
	name = "Library"
	icon_state = "yellow"

/area/constellation/crew/toilets
	name = "Bathrooms"
	icon_state = "toilet"

/area/constellation/crew/wash
	name = "Laundry"
	icon_state = "locker"

//Docks

/area/constellation/dock
	name = "Docking Bay"
	icon_state = "entry_1"

//Escape Pods/Cryo

/area/constellation/escape_port
	name = "Port Escape Pods"
	icon_state = "green"

/area/constellation/escape_star
	name = "Starboard Escape Pods"
	icon_state = "yellow"

//Command

/area/constellation/command
	req_access = list(access_heads)

/area/constellation/command/hallway
	name = "Command Deck"
	icon_state = "centcom"
	req_access = list()

/area/constellation/command/bridge
	name = "Bridge"
	icon_state = "bridge"

/area/constellation/command/bridge_upper
	name = "Upper Bridge"
	icon_state = "blue"

/area/constellation/command/captain
	name = "Captain's Quarters"
	icon_state = "captain"
	req_access = list(access_captain)
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/constellation/command/fmate
	name = "First Mate's Office"
	icon_state = "heads_hop"
	req_access = list(access_hop)

//Medical

/area/constellation/medical
	name = "Medical Bay"
	icon_state = "medbay"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/constellation/medical/chemistry
	name = "Chemistry Bay"
	icon_state = "cave"
	req_access = list(access_medical)

//Science

/area/constellation/science
	name = "Research Bay"
	icon_state = "green"
	req_access = list(access_research)

/area/constellation/science/fabricaton
	name = "Fabrication Bay"
	icon_state = "yellow"

/area/constellation/science/artifact_storage
	name = "Artifact Storage"
	icon_state = "ai_cyborg"

//Cargo

/area/constellation/cargo
	name = "Cargo Hold"
	icon_state = "quartstorage"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/constellation/cargo/lower
	name = "Loading Bay"

//Maintenance

/area/constellation/maintenance
	name = "Maintenance Compartments"
	icon_state = "amaint"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_MAINTENANCE
	sound_env = TUNNEL_ENCLOSED
	turf_initializer = /decl/turf_initializer/maintenance
	forced_ambience = list('sound/ambience/maintambience.ogg')

/area/constellation/maintenance/hallway
	name = "Maintenance Corridors"

/area/constellation/maintenance/lower
	name = "Lower Deck Maintenance Compartments"
	icon_state = "sub_maint_aft"

/area/constellation/hidden
	name = "Unknown"
	icon_state = "auxstorage"

/area/constellation/command/bridge_unused
	name = "Bridge Starboard Storage"
	icon_state = "armory"

//Engineering

/area/constellation/engineering
	name       = "Engineering Bay"
	icon_state = "engineering_supply"
	req_access = list(access_engine)
	secure     = 1

	ambience = list(
		'sound/ambience/ambigen3.ogg',
		'sound/ambience/ambigen4.ogg',
		'sound/ambience/ambigen5.ogg',
		'sound/ambience/ambigen6.ogg',
		'sound/ambience/ambigen7.ogg',
		'sound/ambience/ambigen8.ogg',
		'sound/ambience/ambigen9.ogg',
		'sound/ambience/ambigen10.ogg',
		'sound/ambience/ambigen11.ogg',
		'sound/ambience/ambieng1.ogg'
	)

/area/constellation/engineering/storage
	name = "Engineering Storage"
	icon_state = "engineering_storage"

/area/constellation/engineering/techstorage
	name = "Parts Storage"
	icon_state = "engineering_supply"

/area/constellation/engineering/eva
	name = "EVA Storage"
	icon_state = "eva"
	req_access = list(access_eva)

/area/constellation/engineering/atmos
	name = "Atmospherics Comparment"
	icon_state = "atmos"

/area/constellation/engineering/power
	name = "Power Compartment"
	icon_state = "engine_smes"

/area/constellation/engineering/engine
	name = "Main Engine Bay"
	icon_state = "engine"

/area/constellation/engineering/solars
	name = "Solar Array Access"
	icon_state = "SolarcontrolA"

//Misc.

/area/constellation/brig
	name = "Brig"
	icon_state = "brig"
	req_access = list(access_brig)
	secure     = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_SECURITY

/area/constellation/storage
	name = "Secure Storage"
	icon_state = "engine"
	req_access = list(access_engine_equip)

/area/constellation/comms
	name = "Communications Relay"
	icon_state = "tcomsatcham"
	req_access = list(access_engine)

	ambience = list(
		'sound/ambience/ambigen3.ogg',
		'sound/ambience/ambigen4.ogg',
		'sound/ambience/signal.ogg',
		'sound/ambience/sonar.ogg'
	)

//Underside Maintenance

/area/constellation/maintenance/aft_port_underside_maint
	name = "Underside - Aft Port Maintenance"
	icon_state = "medbay"

/area/constellation/maintenance/aft_starboard_underside_maint
	name = "Underside - Aft Starboard Maintenance"
	icon_state = "toilet"

/area/constellation/maintenance/fore_port_underside_maint
	name = "Underside - Fore Port Maintenance"
	icon_state = "green"

//Underside

/area/constellation/loading_bay
	name = "Underside - Loading Bay"
	icon_state = "entry_1"

/area/constellation/livestock
	name = "Underside - Livestock Handling"
	icon_state = "red"
	req_access = list(access_xenobiology)

/area/constellation/bar
	name = "Underside - Bar"
	icon_state = "yellow"

/area/constellation/undercomms
	name = "Underside - Communications Relay"
	icon_state = "blue"

//Elevator

/area/turbolift/constellation
	name = "Cargo Elevator"
	icon_state = "shuttle"
	requires_power = 0
	dynamic_lighting = 1
	sound_env = STANDARD_STATION
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	arrival_sound = null
	lift_announce_str = null

	ambience = list(
		'sound/ambience/ambigen3.ogg',
		'sound/ambience/ambigen4.ogg',
		'sound/ambience/ambigen5.ogg',
		'sound/ambience/ambigen6.ogg',
		'sound/ambience/ambigen7.ogg',
		'sound/ambience/ambigen8.ogg',
		'sound/ambience/ambigen9.ogg',
		'sound/ambience/ambigen10.ogg',
		'sound/ambience/ambigen11.ogg',
		'sound/ambience/ambigen12.ogg'
	)

/area/turbolift/constellation/alert_on_fall(var/mob/living/carbon/human/H)
	if(H.client && SSpersistence.elevator_fall_shifts > 0)
		SSwebhooks.send(WEBHOOK_ELEVATOR_FALL, list("text" = "We managed to make it [SSpersistence.elevator_fall_shifts] shift\s without someone falling down an elevator shaft."))
		SSpersistence.elevator_fall_shifts = -1

/area/turbolift/constellation/enclave
	name = "Disused Sublevel"
	base_turf = /turf/simulated/floor

/area/turbolift/constellation/cargo
	name = "Lower Cargo Bay"
	base_turf = /turf/simulated/open

/area/turbolift/constellation/upper
	name = "Upper Cargo Bay"
	base_turf = /turf/simulated/open

/area/turbolift/constellation/roof
	name = "Solar Array Access"
	base_turf = /turf/simulated/open
