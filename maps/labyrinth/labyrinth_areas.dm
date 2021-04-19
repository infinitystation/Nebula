/datum/event/prison_break/medical
	areaType = list(/area/labyrinth/medical)

/datum/event/prison_break/science
	areaType = list(/area/labyrinth/science)

/datum/event/prison_break/station
	areaType = list(/area/labyrinth/security)

/area/labyrinth
	name       = "\improper Labyrinth Facility"
	icon_state = "labyrinth"
	icon       = 'maps/labyrinth/media/areas.dmi'
	secure = TRUE

//Engineering

/area/labyrinth/engineering
	name = "Engineering"
	req_access = list(access_engine)

/area/labyrinth/engineering/reactor
	name = "Reactor Bay"

/area/labyrinth/engineering/power
	name = "Power Supply"

/area/labyrinth/engineering/protofusionreactor
	name = "Proto Fusion Reactor Chamber"

/area/labyrinth/engineering/protorcontrol
	name = "Fusion Reactor Control"

/area/labyrinth/engineering/atmospherics
	name = "Life Support"

/area/labyrinth/engineering/communications
	name = "Communications"

//Maintenance

/area/labyrinth/maintenance
	area_flags = AREA_FLAG_RAD_SHIELDED
	sound_env = TUNNEL_ENCLOSED
	turf_initializer = /decl/turf_initializer/maintenance
	forced_ambience = list('sound/ambience/maintambience.ogg')
	req_access = list(access_maint_tunnels)

/area/labyrinth/maintenance/shaft
	name = "Maintenance Shaft"

//Routing

/area/labyrinth/hallway
	area_flags = AREA_FLAG_HALLWAY

/area/labyrinth/hallway/lower
	name = "Lower Hallway"

/area/labyrinth/hallway/upper
	name = "Surface Hallway"

/area/labyrinth/hallway/tower
	name = "Upper Hallway"

/area/labyrinth/eva
	name       = "Exterior Access"
	req_access = list(access_eva)

//Civilian

/area/labyrinth/civilian
	name = "Recreation Area"

/area/labyrinth/civilian/dorm
	name = "Dormitory"

/area/labyrinth/civilian/hygiene
	name = "Hygiene"

/area/labyrinth/civilian/lounge
	name = "Lounge"

/area/labyrinth/civilian/library
	name = "Library"

/area/labyrinth/civilian/cryo
	name = "Cryogenic Storage"

//Medical

/area/labyrinth/medical
	name = "Medical Bay"
	req_access = list(access_medical)

/area/labyrinth/medical/lobby
	name = "Medical Lobby"
	req_access = list()

//Science

/area/labyrinth/science
	name       = "Science Lab"
	req_access = list(access_research)

/area/labyrinth/science/fabrication
	name = "Fabrication Bay"

/area/labyrinth/science/workshop
	name = "Workshop"

/area/labyrinth/science/testing
	name = "Secure Testing Site"

//Cargo

/area/labyrinth/service/cargo
	name = "Cargo Bay"
	req_access = list(access_cargo)

/area/labyrinth/service/cargo/storage
	name = "Cargo Storage"

/area/labyrinth/service/cargo/lift
	name = "Cargo Lift"
	requires_power = FALSE
	dynamic_lighting = TRUE

/area/labyrinth/service/cargo/smelter
	name = "Mining Smelter"
	req_access = list(list(access_cargo, access_research, access_engine))

//Command

/area/labyrinth/bridge
	name       = "Bridge"
	req_access = list(access_bridge)

//Security

/area/labyrinth/security
	name       = "Security Brig"
	req_access = list(access_security)
	area_flags = AREA_FLAG_SECURITY

/area/labyrinth/security/armory
	name       = "Security Armory"
	req_access = list(access_armory)
