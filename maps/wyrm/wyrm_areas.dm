//Order is as follows Hallways, Command, Civilian, Security, Science, Engineering, Medical, Cargo, Maintenance

//////////////////////////////////////
//			HALLWAYS				//
//////////////////////////////////////

/area/wyrm/hallway/primary/fore
	name = "\improper Fore Primary Hallway"
	icon_state = "hallF"

/area/wyrm/hallway/primary/aft
	name = "\improper Aft Primary Hallway"
	icon_state = "hallA"

/area/wyrm/hallway/primary/central
	name = "\improper Central Primary Hallway"
	icon_state = "hallC1"

//////////////////////////////////////
//			COMMAND					//
//////////////////////////////////////

/area/wyrm/command
	icon_state = "blueold"
	req_access = list(access_bridge)

/area/wyrm/command/bridge
	name = "\improper Bridge"

/area/wyrm/command/captain
	name = "\improper Captain's Office"
	req_access = list(access_captain)

/area/wyrm/command/meeting
	name = "\improper Meeting Room"

/area/wyrm/command/aiupload
	name = "\improper AI Upload"
	req_access = list(access_ai_upload)

/area/wyrm/command/aicore
	name = "\improper AI Core"
	req_access = list(access_captain)

/area/wyrm/command/aiuploadfoyer
	name = "\improper AI Upload Foyer"
	req_access = list(access_ai_upload)

/area/wyrm/command/aiatmos
	name = "\improper AI Atmospherics"
	req_access = list(access_engine)

/area/wyrm/command/aicomputer
	name = "\improper AI Data Room" //???
	req_access = list(access_ai_upload)

/area/wyrm/command/eva
	name = "\improper EVA"
	req_access = list(access_eva)

//////////////////////////////////////
//			CIVILIAN				//
//////////////////////////////////////

/area/wyrm/civilian
	icon_state = "green"

/area/wyrm/civilian/cryo1
	name = "\improper Primary Cryogenic Storage"

/area/wyrm/civilian/cryo2
	name = "\improper Secondary Cryogenic Storage"

/area/wyrm/civilian/storage
	name = "\improper Auxiliary Storage"

/area/wyrm/civilian/bar
	name = "\improper Bar"

/area/wyrm/civilian/freezer
	name = "\improper Kitchen Freezer"

/area/wyrm/civilian/hydro
	name = "\improper Hydroponics"

/area/wyrm/civilian/personal
	name = "\improper Personal Storage"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/wyrm/civilian/dorms
	name = "\improper Dormitory"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/wyrm/civilian/lounge
	name = "\improper Lounge"
	area_flags = AREA_FLAG_RAD_SHIELDED

//////////////////////////////////////
//			SECURITY				//
//////////////////////////////////////

/area/wyrm/security
	icon_state = "security"
	req_access = list(access_security)

/area/wyrm/security/entrance
	name = "\improper Brig Entrance"
	req_access = list(access_sec_doors)

/area/wyrm/security/brig
	name = "\improper Brig"
	req_access = list(access_brig)

/area/wyrm/security/warden
	name = "\improper Security Office"
	req_access = list(access_hos)

/area/wyrm/security/armory
	name = "\improper Armory"
	req_access = list(access_armory)

//////////////////////////////////////
//			SCIENCE					//
//////////////////////////////////////

/area/wyrm/science
	icon_state = "research"
	req_access = list(access_research)

/area/wyrm/science/robotics
	name = "\improper Robotics Lab"
	req_access = list(access_robotics)

/area/wyrm/science/rnd
	name = "\improper Research and Development Lab"

/area/wyrm/science/hallway
	name = "\improper Science Wing Hallway"
	req_access = list()

/area/wyrm/science/xenobio
	name = "\improper Xenobiology Wing"
	req_access = list(access_xenobiology)

/area/wyrm/science/prep
	name = "\improper Research Locker Room"
	req_access = list()

/area/wyrm/science/shuttleprep
	name = "\improper Hatchling Preperation Room"
	req_access = list()

/area/wyrm/science/xenoflora
	name = "\improper Xenoflora"
	req_access = list(access_xenobiology)

/area/wyrm/science/xenoflora_storage
	name = "\improper Xenoflora Storage"
	req_access = list(access_tox_storage)

//////////////////////////////////////
//			ENGINEERING				//
//////////////////////////////////////

/area/wyrm/engineering
	icon_state = "yellow"
	req_access = list(access_engine)

/area/wyrm/engineering/tool
	name = "\improper Public Workshop"
	req_access = list()

/area/wyrm/engineering/lobby
	name = "\improper Engineering"

/area/wyrm/engineering/locker
	name = "\improper Engineering Storage"
	req_access = list()

/area/wyrm/engineering/rustmon
	name = "\improper Fusion Core Monitoring Room"

/area/wyrm/engineering/atmos
	name = "\improper Atmospherics"
	req_access = list(access_atmospherics)

/area/wyrm/engineering/atmosmon
	name = "\improper Atmospherics Monitoring"
	req_access = list(access_atmospherics)

/area/wyrm/engineering/engine
	name = "\improper Engine Core"
	icon_state = "engine"

/area/wyrm/engineering/externalmaint
	name = "\improper External Engine Maintenance"
	icon_state = "engine"
	has_gravity = 0
	area_flags = AREA_FLAG_EXTERNAL

/area/wyrm/engineering/subsmes
	name = "\improper Sub Deck SMES Room"

/area/wyrm/engineering/securestorage
	name = "\improper Secure Storage"
	req_access = list(access_engine_equip)

/area/wyrm/engineering/techstorage
	name = "\improper Tech Storage"
	req_access = list(access_tech_storage)

/area/wyrm/engineering/stech
	name = "\improper Secure Tech Storage"
	req_access = list(access_ce)

/area/wyrm/engineering/tcomms
	name = "\improper Telecommunications Server"
	req_access = list(access_tcomsat)

/area/wyrm/engineering/tcommsmon
	name = "\improper Telecommunication Monitoring Room"
	req_access = list(access_tcomsat)

/area/wyrm/engineering/extsubmaint
	name = "\improper External Sub Deck Engine Maintenance"
	has_gravity = 0
	area_flags = AREA_FLAG_EXTERNAL

/area/wyrm/engineering/teg
	name = "\improper TEG Room"

//////////////////////////////////////
//			MEDICAL					//
//////////////////////////////////////

/area/wyrm/medical
	icon_state = "bluenew"
	req_access = list(access_medical)

/area/wyrm/medical/lobby
	name = "\improper Medical Lobby"

/area/wyrm/medical/treatment
	name = "\improper Medical Treatment Center"

/area/wyrm/medical/morgue
	name = "\improper Morgue"
	req_access = list(access_morgue)

/area/wyrm/medical/storage
	name = "\improper Medical Storage"

/area/wyrm/medical/chemistry
	name = "\improper Chemistry Lab"
	req_access = list(access_chemistry)

/area/wyrm/medical/surgery
	name = "\improper Operating Theatre"
	req_access = list(access_surgery)

/area/wyrm/medical/virology
	name = "\improper Virology Lab"
	req_access = list(access_virology)

//////////////////////////////////////
//			LOGISTICS				//
//////////////////////////////////////

/area/wyrm/logistics
	icon_state = "yellow"
	req_access = list(access_cargo)

/area/wyrm/logistics/desk
	name = "\improper Logistics Office"

/area/wyrm/logistics/storage
	name = "\improper Logistics Storage"

/area/wyrm/logistics/loading
	name = "\improper Loading Bay"

/area/shuttle/supply
	name = "Supply Shuttle"
	icon_state = "shuttle3"

/area/wyrm/supply/external
	name = "\improper Supply Gantry"
	has_gravity = FALSE
	area_flags = AREA_FLAG_EXTERNAL

/area/wyrm/supply/bsa
	name = "\improper Field Disperser Control"

//////////////////////////////////////
//			MAINTENANCE				//
//////////////////////////////////////

/area/wyrm/maintenance
	area_flags = AREA_FLAG_RAD_SHIELDED
	sound_env = TUNNEL_ENCLOSED
	turf_initializer = /decl/turf_initializer/maintenance
	forced_ambience = list('sound/ambience/maintambience.ogg')
	// req_access = list(access_maint_tunnels)

/area/wyrm/maintenance/primary/fs
	name = "\improper Fore Starboard Maintenance"
	icon_state = "fsmaint"

/area/wyrm/maintenance/primary/fp
	name = "\improper Fore Port Maintenance"
	icon_state = "fpmaint"

/area/wyrm/maintenance/primary/sec
	name = "\improper Security Maintenance"
	icon_state = "maint_security_starboard"

/area/wyrm/maintenance/primary/cargo
	name = "\improper Cargo Maintenance"
	icon_state = "maint_cargo"

/area/wyrm/maintenance/primary/engs
	name = "\improper Engineering Starboard Maintenance"
	icon_state = "maint_engineering"

/area/wyrm/maintenance/primary/engp
	name = "\improper Engineering Port Maintenance"
	icon_state = "maint_engineering"

/area/wyrm/maintenance/sub/fore
	name = "\improper Fore Sub Deck Maintenance"
	icon_state = "fmaint"

/area/wyrm/maintenance/sub/mid
	name = "\improper Midship Sub Deck Maintenance"
	icon_state = "fmaint"

/area/wyrm/maintenance/sub/aft
	name = "\improper Aft Sub Deck Maintenance"
	icon_state = "amaint"

/area/wyrm/maintenance/drone
	name = "\improper Maintenance Drone Production"
	icon_state = "maint_engineering"
	req_access = list(access_engine)

/area/wyrm/maintenance/construction
	name = "\improper Construction Room"

//////////////////////////////////////
//			Z-LEVEL 3 / ADMIN		//
//////////////////////////////////////

/area/holodeck
	name = "\improper Holodeck"
	icon_state = "Holodeck"
	dynamic_lighting = FALSE
	sound_env = LARGE_ENCLOSED

/area/holodeck/source_battle_arena
	name = "\improper Holodeck - Battle Arena"
	sound_env = ARENA

/area/holodeck/source_surgery
	name = "\improper Holodeck - Surgery Simulation"
	requires_power = FALSE

/area/holodeck/source_beach
	name = "\improper Holodeck - Beach Simulation"

/area/holodeck/source_winter
	name = "\improper Holodeck - Winter Simulation"

/area/holodeck/source_chapel
	name = "\improper Holodeck - Chapel"

/area/holodeck/source_plating
	name = "\improper Holodeck - Off"

/area/drone_test
	name = "\improper Biohazard Simulation Arena"
	requires_power = 0
	dynamic_lighting = 0

// ACTORS GUILD
/area/acting
	name = "\improper Centcom Acting Guild"
	icon_state = "red"
	dynamic_lighting = 0
	requires_power = 0

/area/acting/backstage
	name = "\improper Backstage"

/area/acting/stage
	name = "\improper Stage"
	dynamic_lighting = 1
	icon_state = "yellow"

// Thunderdome

/area/tdome
	name = "\improper Thunderdome"
	icon_state = "thunder"
	requires_power = FALSE
	dynamic_lighting = FALSE
	sound_env = ARENA

/area/tdome/tdome1
	name = "\improper Thunderdome (Team 1)"
	icon_state = "green"

/area/tdome/tdome2
	name = "\improper Thunderdome (Team 2)"
	icon_state = "yellow"

/area/tdome/tdomeadmin
	name = "\improper Thunderdome (Admin.)"
	icon_state = "purple"

/area/tdome/tdomeobserve
	name = "\improper Thunderdome (Observer.)"
	icon_state = "purple"

/area/fightclub
	name = "\improper Actor's Guild Break Room"
	requires_power = FALSE
