/datum/event/prison_break/medical
	areaType = list(/area/odyssey/medical)

/datum/event/prison_break/science
	areaType = list(/area/odyssey/science)

/datum/event/prison_break/station
	areaType = list(/area/odyssey/security)

/area/odyssey
	name = "\improper Odyssey"
	icon = 'maps/odyssey/icons/areas.dmi'
	secure = TRUE

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

//Engineering

/area/odyssey/engineering
	name = "Engineering Bay"
	icon_state = "enghall"
	req_access = list(access_engine)

/area/odyssey/engineering/secure_storage
	name = "Secure Storage"
	icon_state = "secstore"
	req_access = list(access_engine)

/area/odyssey/engineering/engine_room
	name = "\improper Engine Monitoring Room"
	icon_state = "engineroom"
	req_access = list(access_engine_equip)

/area/odyssey/engineering/smes
	name = "\improper Primary Power Storage"
	icon_state = "smes"
	req_access = list(access_engine_equip)

/area/odyssey/engineering/fuel_bay
	icon_state = "fuelbay"

/area/odyssey/engineering/fuel_bay/co2
	name = "\improper Propellant Storage Bay"

/area/odyssey/engineering/hallway
	icon_state = "enghall"
	name = "\improper Engineering Hallway"
	req_access = list(access_engine)

/area/odyssey/engineering/hallway/upper
	name = "\improper Upper Engineering Hallway"
	req_access = list(access_engine)

/area/odyssey/engineering/utility_shaft
	name = "\improper Utility Shaft"
	icon_state = "utilityshaft"

/area/odyssey/engineering/solars
	name = "\improper Bridge Solar Array"
	icon_state = "solars"

/area/odyssey/engineering/shield_generator
	name = "\improper Primary Shield Generator"
	icon_state = "shieldgen"

/area/odyssey/engineering/reactor
	name = "\improper Primary Reactor Core"
	icon_state = "reactor"
	req_access = list(access_engine_equip)

/area/odyssey/engineering/atmospherics
	icon_state = "atmos"
	name = "\improper Atmospherics"
	req_access = list(access_atmospherics)

/area/odyssey/engineering/atmospherics/pump_room
	name = "Coolant Pump Bay"
	req_access = list(access_engine_equip)

/area/odyssey/engineering/atmospherics/monitoring_room
	name = "Atmospherics Monitoring Room"

/area/odyssey/engineering/EVA
	name = "\improper EVA Bay"
	icon_state = "EVA"
	req_access = list(access_engine)

/area/odyssey/engineering/substation
	icon_state = "substation"

/area/odyssey/engineering/substation/one
	name = "\improper First Deck Substation"

/area/odyssey/engineering/substation/two
	name = "\improper Second Deck Substation"

/area/odyssey/engineering/substation/three
	name = "\improper Third Deck Substation"

/area/odyssey/engineering/substation/four
	name = "\improper Bridge Deck Substation"

/area/odyssey/engineering/thruster_bay
	icon_state = "thrustbay"

/area/odyssey/engineering/thruster_bay/one
	name = "\improper First Deck Thruster Bay"

/area/odyssey/engineering/thruster_bay/two
	name = "\improper Third Deck Thruster Bay"

/area/odyssey/engineering/inertial_damper
	name = "Inertial Damper Bay"
	icon_state = "damper"

//Habitation

/area/odyssey/habitation
	icon_state = "habitation"

/area/odyssey/habitation/gentool
	icon_state = "gentool"
	name = "General Tool Storage"

/area/odyssey/habitation/bar
	icon_state = "bar"
	name = "\improper Mess Hall"

/area/odyssey/habitation/bar/backroom
	icon_state = "barback"
	name = "Bar Backroom"
	req_access = list(access_bar)

/area/odyssey/habitation/kitchen
	icon_state = "kitchen"
	name = "\improper Kitchen"
	req_access = list(access_kitchen)

/area/odyssey/habitation/bathroom
	icon_state = "bathroom"

/area/odyssey/habitation/bathroom/one
	name = "\improper Third Deck Bathroom"

/area/odyssey/habitation/bathroom/two
	name = "\improper Second Deck Bathroom"

/area/odyssey/habitation/hydroponics
	icon_state = "hydroponic"
	name = "\improper Hydroponics Bay"
	req_access = list(access_hydroponics)

/area/odyssey/habitation/cabins
	icon_state = "cabin"

/area/odyssey/habitation/cabins/one
	name = "\improper Cabin One"

/area/odyssey/habitation/cabins/two
	name = "\improper Cabin Two"

/area/odyssey/habitation/cabins/three
	name = "\improper Cabin Three"

/area/odyssey/habitation/cabins/four
	name = "\improper Cabin Four"

/area/odyssey/habitation/cryo
	icon_state = "cryo"

/area/odyssey/habitation/cryo/one
	name = "Cryo Bay One"

/area/odyssey/habitation/cryo/two
	name = "Cryo Bay Two"

/area/odyssey/habitation/observation
	name = "Observation Lounge"
	icon_state = "observation"

/area/odyssey/habitation/garden
	name = "Garden"
	icon_state = "garden"

//Security

/area/odyssey/security
	icon_state = "sec"
	name = "Security"
	req_access = list(access_sec_doors)
	area_flags = AREA_FLAG_SECURITY

/area/odyssey/security/lockers
	name = "Locker Room"
	icon_state = "lockers"

/area/odyssey/security/maa_office
	icon_state = "maa"
	name = "\improper Brig Chief's Office"
	req_access = list(access_armory)

/area/odyssey/security/armory
	icon_state = "armory"
	name = "\improper Armory"
	req_access = list(access_armory)

/area/odyssey/security/weapons_bay
	icon_state = "weaponsbay"
	req_access = list(access_security)

/area/odyssey/security/weapons_bay/two
	name = "\improper Torpedo Bay One"

/area/odyssey/security/weapons_bay/three
	name = "\improper Main Weapons Bay"

/area/odyssey/security/hallway/weapons_bay/port
	name = "\improper Port Weapons Bay Access"

/area/odyssey/security/hallway/weapons_bay/starboard
	name = "\improper Starboard Weapons Bay Access"

//Medical

/area/odyssey/medical
	icon_state = "medbay"
	name = "\improper Medbay"
	req_access = list(access_medical)

/area/odyssey/medical/treatment
	icon_state = "etc"
	name = "\improper Treatment Center"

/area/odyssey/medical/operating
	icon_state = "or"

/area/odyssey/medical/operating/one
	name = "\improper Operating Room One"

/area/odyssey/medical/operating/two
	name = "\improper Operating Room Two"

/area/odyssey/medical/chemistry
	icon_state = "chem"
	name = "\improper Chemistry Lab"
	req_access = list(access_chemistry)

/area/odyssey/medical/storage
	name = "Medical Storage"
	icon_state = "medstore"
	req_access = list(access_medical_equip)

/area/odyssey/medical/morgue
	name = "Morgue"
	icon_state = "morgue"

/area/odyssey/medical/morgue/viewing
	name = "Burial Observation"
	icon_state = "morgueview"

/area/odyssey/medical/medtech
	name = "Medical Technician Bay"
	icon_state = "medtech"

//Command

/area/odyssey/command
	icon_state = "comhall"
	req_access = list(access_heads)

/area/odyssey/command/bridge
	icon_state = "bridge"
	name = "\improper Bridge"
	req_access = list(access_bridge)

/area/odyssey/command/bridge/cic
	icon_state = "cic"
	name = "\improper Combat Information Center"
	req_access = list(access_bridge)

/area/odyssey/command/hallway
	name = "\improper Bridge Hallway"
	req_access = list()
	area_flags = AREA_FLAG_HALLWAY

/area/odyssey/command/hallway/cic
	name = "\improper CIC Hallway"

/area/odyssey/command/office
	icon_state = "comoffice"

/area/odyssey/command/office/captain
	name = "\improper Captain's Office"
	req_access = list(access_captain)

/area/odyssey/command/office/captain/bedroom
	name = "Captain's Quarters"
	icon_state = "combed"

/area/odyssey/command/office/xo
	name = "\improper First Officer's Office"
	req_access = list(access_hop)

/area/odyssey/command/office/ce
	name = "\improper Chief Engineer's Office"
	req_access = list(access_ce)

/area/odyssey/command/office/ce/bedroom
	name = "\improper Chief Engineer's Quarters"
	icon_state = "combed"

/area/odyssey/command/office/cmo
	name = "\improper CMO's Office"
	req_access = list(access_cmo)

/area/odyssey/command/office/cmo/bedroom
	name = "\improper CMO's Quarters"
	icon_state = "combed"

/area/odyssey/command/office/maa
	name = "\improper Ship Security Commander's Office"
	req_access = list(access_hos)

/area/odyssey/command/office/maa/bedroom
	name = "\improper Ship Security Commander's Quarters"
	icon_state = "combed"

/area/odyssey/command/office/xo/bedroom
	name = "\improper First Officer's Quarters"
	icon_state = "combed"

/area/odyssey/command/office/bosun
	name = "Bosun's Office"
	icon_state = "bosunoffice"
	req_access = list(access_qm)

/area/odyssey/command/office/bosun/bed
	name = "Bosun's Quarters"
	icon_state = "bosunbed"

/area/odyssey/command/office/rd
	name = "Technology Director's Office"
	icon_state = "rdoffice"
	req_access = list(access_rd)

/area/odyssey/command/office/rd/bed
	name = "Technology Director's Quarters"
	icon_state = "rdoffice"

/area/odyssey/command/bathroom
	name = "Officer Bathroom"
	icon_state = "headbath"
	req_access = list(access_heads)

/area/odyssey/command/meetingroom
	name = "Meeting Room"
	icon_state = "meetingroom"
	req_access = list(access_bridge)

/area/odyssey/command/vault
	name = "Vault"
	icon_state = "vault"
	req_access = list(access_heads_vault)

/area/odyssey/command/sensitive_storage
	name = "Sensitive Storage"
	icon_state = "selfdestruct"
	req_access = list(access_heads_vault)

/area/odyssey/command/ofd
	name = "OFD Bay"
	icon_state = "ofd"
	req_access = list(access_bridge)

/area/odyssey/command/ofdstorage
	name = "OFD Charge Storage"
	icon_state = "ofdammo"
	req_access = list(access_bridge)



//Cargo

/area/odyssey/cargo
	icon_state = "cargo"
	req_access = list(access_cargo)

/area/odyssey/cargo/general
	name = "Cargo Bay"

/area/odyssey/cargo/lobby
	name = "Cargo Lobby"
	icon_state = "cargolobby"
	req_access = list()

/area/odyssey/cargo/disposals
	name = "Disposals Bay"
	icon_state = "disposal"

/area/odyssey/cargo/salvage
	name = "Salvage Technician Bay"
	icon_state = "salvageprep"
	req_access = list(access_mining)

/area/odyssey/cargo/lockers
	name = "Cargo Locker Room"
	icon_state = "cargolocker"

/area/odyssey/cargo/comissary
	name = "Comissary"
	icon_state = "commiss"

//Science

/area/odyssey/science
	icon_state = "science"
	req_access = list(access_research)

/area/odyssey/science/robotics
	icon_state = "robotics"
	name = "Robotics Bay"
	req_access = list(access_robotics)

/area/odyssey/science/science_hall
	name = "Science Hallway"
	icon_state = "sciencehall"

/area/odyssey/science/materials_lab
	name = "Materials Laboratory"
	icon_state = "matlab"

/area/odyssey/science/circuit_lab
	name = "Electrical Engineering"
	icon_state = "science"

/area/odyssey/science/xenobio
	name = "Xenobioflora Laboratory"
	icon_state = "science"
	req_access = list(access_xenobiology)

/area/odyssey/science/xenoarch
	name = "Xenoarcheology"
	icon_state = "science"
	req_access = list(access_xenoarch)

/area/odyssey/science/xenoarch/storage
	name = "Xenoarcheology Storage"
	icon_state = "science"

/area/odyssey/science/xenoarch/lab
	name = "Xenoarcheology Lab"
	icon_state = "science"

/area/odyssey/science/server_room
	name = "Server Room"
	icon_state = "server"
	req_access = list(access_tcomsat)

/area/odyssey/science/network_closet
	req_access = list(access_tcomsat)
	icon_state = "netcloset"

/area/odyssey/science/network_closet/third_deck
	name = "Third Deck Network Node"

/area/odyssey/science/network_closet/bridge_deck
	name = "Bridge Deck Network Node"

//Hallways.

/area/odyssey/hallway
	icon_state = "hallway"
	area_flags = AREA_FLAG_HALLWAY

/area/odyssey/hallway/first_deck
	name = "First Deck Hallway"

/area/odyssey/hallway/second_deck
	name = "\improper Second Deck Hallway"

/area/odyssey/hallway/third_deck/fore
	name = "\improper Third Deck Hallway"

//Escape pod bays

/area/odyssey/escape_pod
	icon_state = "escpod"

/area/odyssey/escape_pod/one
	name = "Escape Pod Bay One"

/area/odyssey/escape_pod/two
	name = "Escape Pod Bay Two"

/area/odyssey/escape_pod/three
	name = "Escape Pod Bay Three"

/area/odyssey/escape_pod/four
	name = "Escape Pod Bay Four"

//Maintenance

/area/odyssey/maintenance
	icon_state = "maint"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_MAINTENANCE
	sound_env = TUNNEL_ENCLOSED
	turf_initializer = /decl/turf_initializer/maintenance
	forced_ambience = list('sound/ambience/maintambience.ogg')
	req_access = list(access_maint_tunnels)

/area/odyssey/maintenance/deckone/aft
	name = "First Deck Aft Maintenance"

/area/odyssey/maintenance/deckone/aft/port
	name = "First Deck Aft Port Maintenance"

/area/odyssey/maintenance/deckone/aft/starboard
	name = "First Deck Aft Starboard Maintenance"

/area/odyssey/maintenance/deckone/fore/starboard
	name = "First Deck Fore Starboard Maintenance"

/area/odyssey/maintenance/deckone/fore/port
	name = "First Deck Fore Port Maintenance"

/area/odyssey/maintenance/deckone/amidships/port
	name = "First Deck Amidships Port Maintenance"

//Second Deck Maint

/area/odyssey/maintenance/decktwo/fore/port
	name = "Second Deck Fore Port Maintenance"

/area/odyssey/maintenance/decktwo/fore/starboard
	name = "Second Deck Fore Starboard Maintenance"

/area/odyssey/maintenance/decktwo/amidship/starboard
	name = "Second Deck Amidships Starboard Maintenance"

/area/odyssey/maintenance/decktwo/aft/port
	name = "Second Deck Aft Port Maintenance"

/area/odyssey/maintenance/decktwo/aft/starboard
	name = "Second Deck Aft Starboard Maintenance"

//Third Deck Maint

/area/odyssey/maintenance/deckthree/aft
	name = "Third Deck Aft Maintenance"

/area/odyssey/maintenance/deckthree/aftport
	name = "Third Deck Aft Port Maintenance"

/area/odyssey/maintenance/deckthree/foreport
	name = "Third Deck Fore Port Maintenance"

/area/odyssey/maintenance/deckthree/fore/starboard
	name = "Third Deck Fore Starboard Maintenance"

/area/odyssey/maintenance/deckthree/aft/starboard
	name = "Third Deck Aft Starboard Maintenance"

//Misc areas

/area/odyssey/eva
	name = "General EVA Bay"
	icon_state = "gen_eva"
	req_access = list(access_eva)

/area/odyssey/hangar
	name = "Hangar Bay"
	icon_state = "hangar"

/area/odyssey/ladderwell
	name = "Ladderwell"
	icon_state = "ladder"

/area/odyssey/janitorial
	name = "Janitorial Closet"
	icon_state = "janitor"
	req_access = list(access_janitor)

//Shuttles

/area/odyssey/shuttle/gnat
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/odyssey/shuttle/gnat/cockpit
	name = "Gnat - Cockpit"
	icon_state = "gnatpilot"

/area/odyssey/shuttle/gnat/passenger
	name = "Gnat - Passenger Bay"
	icon_state = "gnatpass"

/area/odyssey/shuttle/gnat/cargo
	name = "Gnat - Cargo Bay"
	icon_state = "gnatcargo"

/area/odyssey/shuttle/gnat/maint
	name = "Gnat - Atmos Compartment"
	icon_state = "gnatmaint"

//Supply station stuff.

/area/supply
	requires_power = FALSE
	dynamic_lighting = TRUE

/area/supply_station
	name = "Supply Station"
	icon_state = "supplystation"
