/datum/map/torch

	base_floor_type = /turf/simulated/floor/reinforced/airless
	base_floor_area = /area/torch/exterior

/area/torch
	// Might be worth to replace later.
//	name = "\improper ISEO Endeavour"
	secure = TRUE

/area/torch/hallway
	area_flags = AREA_FLAG_HALLWAY

/area/torch/maintenance
	area_flags = AREA_FLAG_RAD_SHIELDED
	sound_env = TUNNEL_ENCLOSED
	turf_initializer = /decl/turf_initializer/maintenance
	forced_ambience = list('sound/ambience/maintambience.ogg')
	req_access = list(access_maint_tunnels)

//Ported areas that do not exist in Nebula Base.
/area/torch/research/xenobiology/xenoflora
	name = "\improper Xenoflora Lab"
	icon_state = "xeno_f_lab"

/area/torch/research/xenobiology/xenoflora_storage
	name = "\improper Xenoflora Storage"
	icon_state = "xeno_f_store"

//Fifth Deck (Z-0)
/area/torch/hallway/primary/fifthdeck/fore
	name = "\improper Fifth Deck Fore Hallway"
	icon_state = "hallF"

/area/torch/hallway/primary/fifthdeck/aft
	name = "\improper Fifth Deck Aft Hallway"
	icon_state = "hallA"

/area/torch/maintenance/fifthdeck
	name = "Fifth Deck Maintenance"
	icon_state = "maintcentral"

/area/torch/maintenance/fifthdeck/aftport
	name = "Fifth Deck Aft Port Maintenance"
	icon_state = "apmaint"

/area/torch/maintenance/fifthdeck/aftstarboard
	name = "Fifth Deck Aft Starboard Maintenance"
	icon_state = "asmaint"

/area/torch/maintenance/fifthdeck/fore
	name = "Fifth Deck Fore Maintenance"
	icon_state = "fmaint"

/area/torch/maintenance/substation/fifthdeck
	name = "Fifth Deck Substation"

//Fourth Deck (Z-1)
/area/torch/hallway/primary/fourthdeck/fore
	name = "\improper Fourth Deck Fore Hallway"
	icon_state = "hallF"

/area/torch/hallway/primary/fourthdeck/center
	name = "\improper Fourth Deck Central Hallway"
	icon_state = "hallC3"

/area/torch/hallway/primary/fourthdeck/aft
	name = "\improper Fourth Deck Aft Hallway"
	icon_state = "hallA"

/area/torch/maintenance/fourthdeck
	name = "Fourth Deck Maintenance"
	icon_state = "maintcentral"

/area/torch/maintenance/fourthdeck/aft
	name = "Fourth Deck Aft Maintenance"
	icon_state = "amaint"

/area/torch/maintenance/fourthdeck/foreport
	name = "Fourth Deck Fore Port Maintenance"
	icon_state = "fpmaint"

/area/torch/maintenance/fourthdeck/forestarboard
	name = "Fourth Deck Fore Starboard Maintenance"
	icon_state = "fsmaint"

/area/torch/maintenance/fourthdeck/starboard
	name = "Fourth Deck Starboard Maintenance"
	icon_state = "smaint"

/area/torch/maintenance/fourthdeck/port
	name = "Fourth Deck Port Maintenance"
	icon_state = "pmaint"

/area/torch/teleporter/fourthdeck
	name = "\improper Fourth Deck Teleporter"
	icon_state = "teleporter"

/area/torch/maintenance/substation/fourthdeck
	name = "Fourth Deck Substation"

//Third Deck (Z-2)
/area/torch/hallway/primary/thirddeck/fore
	name = "\improper Third Deck Fore Hallway"
	icon_state = "hallF"

/area/torch/hallway/primary/thirddeck/center
	name = "\improper Third Deck Central Hallway"
	icon_state = "hallC3"

/area/torch/hallway/primary/thirddeck/aft
	name = "\improper Third Deck Aft Hallway"
	icon_state = "hallA"

/area/torch/maintenance/thirddeck
	name = "Third Deck Maintenance"
	icon_state = "maintcentral"

/area/torch/maintenance/thirddeck/foreport
	name = "Third Deck Fore Port Maintenance"
	icon_state = "fpmaint"

/area/torch/maintenance/thirddeck/forestarboard
	name = "Third Deck Fore Starboard Maintenance"
	icon_state = "fsmaint"

/area/torch/maintenance/thirddeck/starboard
	name = "Third Deck Starboard Maintenance"
	icon_state = "smaint"

/area/torch/maintenance/thirddeck/port
	name = "Third Deck Port Maintenance"
	icon_state = "pmaint"

/area/torch/maintenance/thirddeck/aftstarboard
	name = "Third Deck Aft Starboard Maintenance"
	icon_state = "asmaint"

/area/torch/maintenance/thirddeck/aftport
	name = "Third Deck Aft Port Maintenance"
	icon_state = "apmaint"

/area/torch/teleporter/thirddeck
	name = "\improper Third Deck Teleporter"
	icon_state = "teleporter"

/area/torch/maintenance/substation/thirddeck
	name = "Third Deck Substation"

/area/torch/crew_quarters/safe_room
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/torch/crew_quarters/safe_room/thirddeck
	name = "\improper Third Deck Safe Room"

/area/torch/crew_quarters/laundry
	name = "\improper Laundry Room"
	icon_state = "Sleep"

//Second Deck (Z-3)
/area/torch/maintenance/seconddeck
	name = "Second Deck Maintenance"
	icon_state = "maintcentral"

/area/torch/maintenance/seconddeck/aftstarboard
	name = "Second Deck Aft Starboard Maintenance"
	icon_state = "asmaint"

/area/torch/maintenance/seconddeck/aftport
	name = "Second Deck Aft Port Maintenance"
	icon_state = "apmaint"

/area/torch/maintenance/seconddeck/foreport
	name = "Second Deck Fore Port Maintenance"
	icon_state = "fpmaint"

/area/torch/maintenance/seconddeck/forestarboard
	name = "Second Deck Fore Starboard Maintenance"
	icon_state = "fsmaint"

/area/torch/maintenance/seconddeck/central
	name = "Second Deck Central Maintenance"
	icon_state = "maintcentral"

/area/torch/hallway/primary/seconddeck
	name = "Second Deck Central Hallway"
	icon_state = "hallC2"

/area/torch/hallway/primary/seconddeck/center
	name = "\improper Second Deck Stairwell"

/area/torch/hallway/primary/seconddeck/elevator
	name = "Second Deck Elevator Landing"
	icon_state = "hallC2_e"

/area/torch/hallway/primary/seconddeck/fore
	name = "Second Deck Fore Hallway"
	icon_state = "hallF2"

/area/torch/teleporter/seconddeck
	name = "\improper Second Deck Teleporter"
	icon_state = "teleporter"

/area/torch/maintenance/substation/seconddeck
	name = "Second Deck Substation"

//First Deck (Z-4)
/area/torch/maintenance/firstdeck
	name = "First Deck Maintenance"
	icon_state = "maintcentral"

/area/torch/maintenance/firstdeck/aftstarboard
	name = "First Deck Aft Starboard Maintenance"
	icon_state = "asmaint"

/area/torch/maintenance/firstdeck/aftport
	name = "First Deck Aft Port Maintenance"
	icon_state = "apmaint"

/area/torch/maintenance/firstdeck/forestarboard
	name = "First Deck Fore Starboard Maintenance"
	icon_state = "fsmaint"

/area/torch/maintenance/firstdeck/foreport
	name = "First Deck Fore Port Maintenance"
	icon_state = "fpmaint"

/area/torch/maintenance/firstdeck/centralstarboard
	name = "First Deck Starboard Maintenance"
	icon_state = "smaint"

/area/torch/maintenance/firstdeck/centralport
	name = "First Deck Port Maintenance"
	icon_state = "pmaint"

/area/torch/teleporter/firstdeck
	name = "\improper First Deck Teleporter"
	icon_state = "teleporter"

/area/torch/hallway/primary/firstdeck/fore
	name = "\improper First Deck Fore Hallway"
	icon_state = "hallF"

/area/torch/hallway/primary/firstdeck/center
	name = "\improper First Deck Central Hallway"
	icon_state = "hallC1"

/area/torch/hallway/primary/firstdeck/aft
	name = "\improper First Deck Aft Hallway"
	icon_state = "hallA"

/area/torch/crew_quarters/safe_room/firstdeck
	name = "\improper First Deck Safe Room"

/area/torch/crew_quarters/safe_room/medical
	name = "\improper Medical Safe Room"

/area/torch/maintenance/substation/firstdeck // First Deck (Z-4)
	name = "First Deck Substation"

//Bridge (Z-5)
/area/torch/maintenance/bridge
	name = "Bridge Maintenance"
	icon_state = "maintcentral"

/area/torch/maintenance/bridge/aftstarboard
	name = "Bridge Aft Starboard Maintenance"
	icon_state = "asmaint"

/area/torch/maintenance/bridge/aftport
	name = "Bridge Aft Port Maintenance"
	icon_state = "apmaint"

/area/torch/maintenance/bridge/forestarboard
	name = "Bridge Fore Starboard Maintenance"
	icon_state = "fsmaint"

/area/torch/maintenance/bridge/foreport
	name = "Bridge Fore Port Maintenance"
	icon_state = "fpmaint"

/area/torch/hallway/primary/bridge/fore
	name = "\improper Bridge Fore Hallway"
	icon_state = "hallF"

/area/torch/hallway/primary/bridge/aft
	name = "\improper Bridge Aft Hallway"
	icon_state = "hallA"

/area/torch/maintenance/substation/bridge // First Deck (Z-4)
	name = "Bridge Substation"

/area/torch/crew_quarters/safe_room/bridge
	name = "\improper Bridge Safe Room"

/area/torch/bridge/storage
	name = "\improper Bridge Storage"
	req_access = list(access_bridge)

// Shuttles
/area/shuttle/transport1/centcom
	icon_state = "shuttle"
	name = "\improper Transport Shuttle Centcom"

//Endeavour large pods
/area/shuttle/escape_pod6/station
	name = "Escape Pod One"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod7/station
	name = "Escape Pod Two"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod8/station
	name = "Escape Pod Three"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod9/station
	name = "Escape Pod Four"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod10/station
	name = "Escape Pod Five"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod11/station
	name = "Escape Pod Six"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod18/station
	name = "Escape Pod Thirteen"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod19/station
	name = "Escape Pod Fourteen"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//Endeavour small pods
/area/shuttle/escape_pod12/station
	name = "Escape Pod Seven"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod13/station
	name = "Escape Pod Eight"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod15/station
	name = "Escape Pod Ten"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod16/station
	name = "Escape Pod Eleven"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod17/station
	name = "Escape Pod Twelve"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//Spirit

/area/torch/exploration_shuttle
	name = "\improper Spirit"
	icon_state = "shuttlered"
	base_turf = /turf/simulated/floor/plating
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/torch/exploration_shuttle/cockpit
	name = "\improper Spirit - Cockpit"
	req_access = list(access_expedition_shuttle)

/area/torch/exploration_shuttle/atmos
	name = "\improper Spirit - Atmos Compartment"

/area/torch/exploration_shuttle/power
	name = "\improper Spirit - Power Compartment"

/area/torch/exploration_shuttle/crew
	name = "\improper Spirit - Crew Compartment"

/area/torch/exploration_shuttle/cargo
	name = "\improper Spirit - Cargo Bay"

/area/torch/exploration_shuttle/airlock
	name = "\improper Spirit - Airlock Compartment"

//Perseverance

/area/torch/perseverance
	name = "\improper ISEO Perseverance"
	icon_state = "shuttlered"
	base_turf = /turf/simulated/floor/reinforced/airless
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/torch/perseverance/cockpit
	name = "\improper ISEO Perseverance - Cockpit"
	req_access = list(access_perseverance)

/area/torch/perseverance/maintenance
	name = "\improper ISEO Perseverance - Maintenance"
	req_access = list(access_solgov_crew)

/area/torch/perseverance/storage
	name = "\improper ISEO Perseverance - Storage"
	req_access = list(access_solgov_crew)

/area/torch/perseverance/secure_storage
	name = "\improper ISEO Perseverance - Secure Storage"
	req_access = list(access_perseverance)

/area/torch/perseverance/mess
	name = "\improper ISEO Perseverance - Mess Hall"

/area/torch/perseverance/passenger
	name = "\improper ISEO Perseverance - Passenger Compartment"

/area/torch/perseverance/medical
	name = "\improper ISEO Perseverance - Medical"

/area/torch/perseverance/head
	name = "\improper ISEO Perseverance - Head"

/area/torch/perseverance/airlock
	name = "\improper ISEO Perseverance - Airlock Compartment"
	req_access = list(access_solgov_crew)

//Opportunity

/area/torch/opportunity_hangar/start
	name = "\improper Opportunity"
	icon_state = "shuttlered"
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_opportunity)

/area/torch/curiosity_hangar/start
	name = "\improper Curiosity"
	icon_state = "shuttlered"
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_curiosity)

/area/torch/research/xenoarch
	req_access = list(access_research, access_xenoarch)

/area/torch/research/xenoarch/cell1
	name = "\improper Isolation Cell 1"
	icon_state = "shuttle"

/area/torch/research/xenoarch/cell2
	name = "\improper Isolation Cell 2"
	icon_state = "shuttle"

/area/torch/research/xenoarch/cell3
	name = "\improper Isolation Cell 3"
	icon_state = "shuttle"

/area/torch/research/xenoarch/analysis
	name = "\improper Analysis Lab"
	icon_state = "devlab"

/area/torch/research/xenoarch/equipment
	name = "Xenoarcheology Equipment Storage"
	icon_state = "locker"

/area/torch/research/xenoarch/anom_storage
	name = "Xenoarcheology Anomaly Storage"
	icon_state = "locker"

//Turbolift
/area/turbolift
	name = "\improper Turbolift"
	icon_state = "shuttle"
	requires_power = 0
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_maint_tunnels)

/area/turbolift/start
	name = "\improper Turbolift Start"

/area/turbolift/bridge
	name = "\improper bridge"
	base_turf = /turf/simulated/open

/area/turbolift/firstdeck
	name = "\improper first deck"
	base_turf = /turf/simulated/open

/area/turbolift/seconddeck
	name = "\improper second deck"
	base_turf = /turf/simulated/open

/area/turbolift/thirddeck
	name = "\improper third deck"
	base_turf = /turf/simulated/open

/area/turbolift/fourthdeck
	name = "\improper fourth deck"
	base_turf = /turf/simulated/floor/plating

/area/turbolift/cargo_lift
	name = "\improper Cargo Lift"
	icon_state = "shuttle3"
	base_turf = /turf/simulated/open

/area/turbolift/robotics_lift
	name = "\improper Robotics Lift"
	icon_state = "shuttle3"
	base_turf = /turf/simulated/open

/area/turbolift/medical_lift
	name = "\improper Medical Lift"
	icon_state = "shuttle3"
	base_turf = /turf/simulated/open

// Elevator areas.
/area/turbolift/endeavour_top
	name = "lift (bridge)"
	lift_floor_label = "Bridge"
	lift_floor_name = "Bridge"
	lift_announce_str = "Arriving at Command Deck: Bridge. Meeting Room. Command Offices. Auxiliary Hangar. Auxiliary EVA."

/area/turbolift/endeavour_fourth
	name = "lift (first deck)"
	lift_floor_label = "Deck 1"
	lift_floor_name = "Operations Deck"
	lift_announce_str = "Arriving at Operations Deck: Infirmary. Security Wing. Research Wing. Auxiliary Cryogenic Storage. Emergency Armory."

/area/turbolift/endeavour_third
	name = "lift (second deck)"
	lift_floor_label = "Deck 2"
	lift_floor_name = "Maintenance Deck"
	lift_announce_str = "Arriving at Maintenance Deck: Engineering. Atmospherics. Storage."

/area/turbolift/endeavour_second
	name = "lift (third deck)"
	lift_floor_label = "Deck 3"
	lift_floor_name = "Habitation Deck"
	lift_announce_str = "Arriving at Habitation Deck: Telecommunications. Mess Hall. Officer's Mess. Lounge. Observation. Hydroponics. Cryogenic Storage. Holodeck. Gym."

/area/turbolift/endeavour_first
	name = "lift (fourth deck)"
	lift_floor_label = "Deck 4"
	lift_floor_name = "Supply Deck"
	lift_announce_str = "Arriving at Supply Deck: EVA. Docking Ports. Pathfinder's Office. Cargo Storage. Supply Office. Laundry. Sanitation."

/area/turbolift/endeavour_ground
	name = "lift (fifth deck)"
	lift_floor_label = "Deck 5"
	lift_floor_name = "Hangar Deck"
	lift_announce_str = "Arriving at Hangar Deck: Main Hangar. Supply Warehouse. Expedition Preparation. Mineral Processing."
	base_turf = /turf/simulated/floor

// Command
/area/torch/command
	name = "Command"
	req_access = list(access_bridge)
	secure = TRUE

/area/torch/command/captainmess
	name = "Officer's Mess"
	icon_state = "bar"
	sound_env = MEDIUM_SOFTFLOOR

/area/torch/command/pathfinder
	name = "\improper Pathfinder's Office"
	icon_state = "head_quarters"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_pathfinder)

/area/torch/command/pilot
	name = "\improper Pilot's Lounge"
	icon_state = "head_quarters"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_pilot)

/area/torch/command/disperser
	name = "\improper Obstruction Field Disperser"
	icon_state = "disperser"
	req_access = list(access_bridge)

/area/torch/crew_quarters/heads
	icon_state = "heads"
	req_access = list(access_heads)

/area/torch/crew_quarters/heads/cobed
	icon_state = "heads_cap"
	name = "\improper Command - CO's Quarters"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_captain)

/area/torch/crew_quarters/heads/office/co
	icon_state = "heads_cap"
	name = "\improper Command - CO's Office"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_captain)

/area/torch/crew_quarters/heads/office/xo
	icon_state = "heads_hop"
	name = "\improper Command - XO's Office"
	req_access = list(access_hop)

/area/torch/crew_quarters/heads/office/rd
	icon_state = "heads_rd"
	name = "\improper Command - CSO's Office"
	req_access = list(access_rd)

/area/torch/crew_quarters/heads/office/cmo
	icon_state = "heads_cmo"
	name = "\improper Command - CMO's Office"
	req_access = list(access_cmo)

/area/torch/crew_quarters/heads/office/ce
	icon_state = "heads_ce"
	name = "\improper Engineering - CE's Office"
	req_access = list(access_ce)

/area/torch/crew_quarters/heads/office/cos
	icon_state = "heads_hos"
	name = "\improper Command - CoS' Office"
	req_access = list(access_hos)

/area/torch/crew_quarters/heads/office/cl
	icon_state = "heads_cl"
	name = "\improper Command - CL's Office"
	req_access = list(access_liaison)

/area/torch/crew_quarters/heads/office/cl/backroom
	icon_state = "heads_cl"
	name = "\improper Command - CL's Backroom"
	req_access = list(access_liaison)

/area/torch/crew_quarters/heads/office/sgr
	icon_state = "heads_sr"
	name = "\improper Command - NCR's Office"
	req_access = list(access_representative)

/area/torch/crew_quarters/heads/office/sea
	icon_state = "heads_sea"
	name = "\improper Command - SEA's Office"
	req_access = list(access_senadv)

// Engineering
/area/torch/engineering
	name = "Engineering"
	req_access = list(access_engine)

/area/torch/engineering/shieldbay
	name = "Shield Bay"
	icon_state = "engineering"
	req_access = list(access_engine, access_engine_equip)

/area/torch/engineering/bluespace
	name = "Superluminal Drive Containment"
	icon_state = "engineering"
	color = COLOR_BLUE_LIGHT
	req_access = list(list(access_engine_equip, access_heads), access_engine, access_maint_tunnels)

/area/torch/engineering/atmos/aux
	name = "\improper Auxiliary Atmospherics"
	icon_state = "atmos"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_atmospherics)

/area/torch/engineering/auxpower
	name = "\improper Auxiliary Power Storage"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip)

/area/torch/engineering/auxpowergen
	name = "\improper Auxiliary Power Generation"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip)

/area/torch/engineering/hardstorage
	name = "\improper Engineering Hard Storage"
	icon_state = "engineering_storage"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip)

/area/torch/engineering/hardstorage/aux
	name = "\improper Auxiliary Engineering Hard Storage"
	icon_state = "engineering_storage"

//Vacant Areas
/area/torch/vacant
	name = "\improper Vacant Area"
	icon_state = "construction"

/area/torch/vacant/armory
	name = "\improper Vacant Armory"
	icon_state = "Tactical"

/area/torch/vacant/cabin
	name = "\improper Vacant Cabins"
	icon_state = "crew_quarters"

/area/torch/vacant/mess
	name = "\improper Old Mess"
	icon_state = "bar"

/area/torch/vacant/chapel
	name = "\improper Unused Chapel"
	icon_state = "chapel"

/area/torch/vacant/infirmary
	name = "\improper Auxiliary Infirmary"
	icon_state = "medbay"

/area/torch/vacant/monitoring
	name = "\improper Auxiliary Monitoring Room"
	icon_state = "engine_monitoring"

/area/torch/vacant/prototype
	req_access = list(access_engine)

/area/torch/vacant/prototype/control
	name = "\improper Prototype Fusion Reactor Control Room"
	icon_state = "engine_monitoring"

/area/torch/vacant/prototype/engine
	name = "\improper Prototype Fusion Reactor Chamber"
	icon_state = "firingrange"

/area/torch/vacant/cargo
	name = "\improper Requisitions Office"
	icon_state = "quart"

/area/torch/vacant/bar
	name = "\improper Hidden Bar"
	icon_state = "bar"

// Storage
/area/torch/storage/auxillary
	req_access = list(access_cargo)

/area/torch/storage/auxillary/port
	name = "Port Auxillary Storage"
	icon_state = "auxstorage"

/area/torch/storage/auxillary/starboard
	name = "Starboard Auxillary Storage"
	icon_state = "auxstorage"

/area/torch/storage/cargo
	name = "Cargo Storage"
	icon_state = "quartstorage"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_cargo)

/area/torch/storage/medical
	name = "Medical Storage"
	icon_state = "medbay4"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_medical)

/area/torch/storage/research
	name = "Research Storage"
	icon_state = "toxstorage"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_research)

// Supply

/area/torch/quartermaster
	req_access = list(access_cargo)

/area/torch/quartermaster/office
	name = "\improper Supply Office"
	icon_state = "quartoffice"

/area/torch/quartermaster/storage
	name = "\improper Supply Warehouse"
	icon_state = "quartstorage"
	sound_env = LARGE_ENCLOSED

/area/torch/quartermaster/sorting
	name ="\improper Supply Sorting"
	icon_state = "quartstorage"

/area/torch/quartermaster/storage/upper
	name = "\improper Supply Upper Warehouse"

/area/torch/quartermaster/deckchief
	name = "\improper Deck Chief's Office"
	icon_state = "quart"
	req_access = list(access_qm)

/area/torch/quartermaster/expedition
	name = "\improper Expedition Preparation"
	icon_state = "mining"
	req_access = list(list(access_mining, access_nanotrasen, access_xenoarch))

/area/torch/quartermaster/expedition/eva
	name = "\improper Expedition EVA"
	icon_state = "mining"
	req_access = list(list(access_mining, access_xenoarch))

/area/torch/quartermaster/expedition/storage
	name = "\improper Hangar Expedition Storage"
	icon_state = "mining"
	req_access = list(list(access_mining, access_explorer, access_xenoarch))

/area/torch/quartermaster/expedition/atmos
	name = "\improper Hangar Atmospheric Storage"
	icon_state = "mining"
	req_access = list(list(access_mining, access_explorer, access_xenoarch))

/area/torch/quartermaster/exploration
	name = "\improper Exploration Equipment"
	icon_state = "exploration"
	req_access = list(list(access_explorer, access_pathfinder, access_pilot))

/area/torch/quartermaster/shuttlefuel
	name = "\improper Shuttle Fuel Bay"
	icon_state = "toxstorage"
	req_access = list(list(access_hangar, access_cargo))

/area/torch/quartermaster/hangar
	name = "\improper Hangar Deck"
	icon_state = "hangar"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_hangar)

/area/torch/quartermaster/hangar/top
	name = "\improper Hangar Upper Walkway"
	req_access = list()

/area/torch/quartermaster/flightcontrol
	name = "\improper Flight Control Tower"
	icon_state = "hangar"
	req_access = list(access_hangar)

// Research
/area/torch/research
	name = "Research and Development"
	req_access = list(access_research)

/area/torch/research/canister
	name = "\improper Canister Storage"
	icon_state = "toxstorage"
	req_access = list(access_tox_storage)

/area/torch/research/development
	name = "\improper Fabricator Lab"
	icon_state = "devlab"

/area/torch/research/office
	name = "\improper Research Paperwork Office"
	icon_state = "devlab"

/area/torch/research/entry
	name = "\improper Research and Development Access"
	icon_state = "decontamination"
	req_access = list()

/area/torch/research/locker
	name = "\improper Research Locker Room"
	icon_state = "locker"

/area/torch/research/xenobiology/entry
	name = "\improper Xenobiology Access"
	icon_state = "xeno_lab"
	req_access = list() // This is a separate vestibule thing, needs low access.

// Crew areas
/area/torch/crew_quarters/bar
	name = "\improper Bar"
	icon_state = "bar"
	sound_env = LARGE_SOFTFLOOR
	req_access = list(access_bar)

/area/torch/crew_quarters/cryolocker
	name = "\improper Cryogenic Storage Wardrobe"
	icon_state = "locker"

/area/torch/crew_quarters/restroom
	name = "\improper Third Deck Restroom"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED

/area/torch/crew_quarters/restroom/aux
	name = "\improper First Deck Restroom"

/area/torch/crew_quarters/pool
	name = "\improper Pool"
	icon_state = "fitness"

/area/torch/crew_quarters/sauna
	name = "\improper Sauna"
	icon_state = "sauna"

/area/torch/crew_quarters/gym
	name = "\improper Gym"
	icon_state = "fitness"

/area/torch/crew_quarters/mess
	name = "\improper Mess Hall"
	icon_state = "cafeteria"

/area/torch/crew_quarters/recreation
	name = "\improper Recreation"
	icon_state = "crew_quarters"

/area/torch/crew_quarters/observation
	name = "\improper Observation"
	icon_state = "fitness"

/area/torch/crew_quarters/galley
	name = "\improper Galley"
	icon_state = "kitchen"
	req_access = list(access_kitchen)

/area/torch/crew_quarters/galleybackroom
	name = "\improper Galley Cold Storage"
	icon_state = "kitchen"
	req_access = list(access_kitchen)

/area/torch/crew_quarters/commissary
	name = "\improper Commissary"
	icon_state = "crew_quarters"
	req_access = list(access_commissary)

/area/torch/crew_quarters/lounge
	name = "\improper Lounge"
	icon_state = "crew_quarters"
	sound_env = MEDIUM_SOFTFLOOR

/area/torch/crew_quarters/safe_room
	name = "\improper Safe Room"
	icon_state = "crew_quarters"
	sound_env = SMALL_ENCLOSED
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/torch/crew_quarters/sleep/cryo/aux
	name = "\improper First Deck Cryogenic Storage"
	icon_state = "Sleep"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/torch/crew_quarters/adherent
	name = "\improper Adherent Maintenence"
	icon_state = "robotics"

/area/torch/crew_quarters/office
	name = "\improper Computer Lab"
	icon_state = "conference"

/area/torch/hydroponics/storage
	name = "\improper Hydroponics Storage"

// Tcomms
/area/torch/tcommsat/storage
	name = "\improper Telecoms Storage"
	icon_state = "tcomsatstore"

/area/torch/tcommsat/network_relay
	icon_state = "tcomsatstore"

/area/torch/tcommsat/network_relay/bridge
	name = "\improper Bridge Deck Network Relay"

/area/torch/tcommsat/network_relay/d1
	name = "\improper First Deck Network Relay"

/area/torch/tcommsat/network_relay/d2
	name = "\improper Second Deck Network Relay"

/area/torch/tcommsat/network_relay/d4
	name = "\improper Fourth Deck Network Relay"

/area/torch/tcommsat/network_relay/d5
	name = "\improper Fifth Deck Network Relay"


// Borg Upload

/area/torch/synth/borg_upload
	name = "\improper Cyborg Upload Chamber"
	icon_state = "ai_upload"
	ambience = list('sound/ambience/ambimalf.ogg')
	req_access = list(access_ai_upload)

// Security
/area/torch/security
	name = "\improper Security"
	req_access = list(access_sec_doors)
	secure = TRUE

/area/torch/security/brig
	name = "\improper Security - Brig"
	icon_state = "brig"
	req_access = list(access_brig)

/area/torch/security/bo
	name = "\improper Security - Brig Chief"
	icon_state = "Warden"
	req_access = list(access_armory)

/area/torch/security/storage
	name = "\improper Security - Equipment Storage"
	icon_state = "security"
	req_access = list(access_brig)

/area/torch/security/armoury
	name = "\improper Security - Armory"
	icon_state = "Warden"
	req_access = list(access_armory)

/area/torch/security/detectives_office
	name = "\improper Security - Investigations Office"
	icon_state = "detective"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_forensics_lockers)

/area/torch/security/locker
	name = "\improper Security - Locker Room"
	icon_state = "security"

/area/torch/security/evidence
	name = "\improper Security - Evidence Storage"
	icon_state = "security"

/area/torch/security/questioning
	name = "\improper Security - Interview Room"
	icon_state = "security"

/area/torch/security/wing
	name = "\improper Security Wing"
	icon_state = "security"

/area/torch/security/bridgecheck
	name = "\improper Bridge Deck Security Checkpoint"
	icon_state = "checkpoint"

/area/torch/security/opscheck
	name = "\improper First Deck Security Checkpoint"
	icon_state = "checkpoint"

/area/torch/security/habcheck
	name = "\improper Third Deck Security Checkpoint"
	icon_state = "checkpoint"

/area/torch/security/hangcheck
	name = "\improper Fourth Deck Security Checkpoint"
	icon_state = "checkpoint"

// Medbay

/area/torch/medical
	name = "\improper Medical"
	req_access = list(access_medical)

/area/torch/medical/equipstorage
	name = "\improper Medical Equipment Storage"
	icon_state = "medbay4"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_medical_equip)

/area/torch/medical/hallway
	name = "\improper Medical Public Hallway"
	icon_state = "medbay"
	req_access = list()

/area/torch/medical/foyer
	name = "\improper Medical Foyer"
	icon_state = "medbay"
	req_access = list(list(access_medical,access_morgue,access_forensics_lockers))

/area/torch/medical/foyer/storeroom
	name = "\improper Medical Storeroom"
	icon_state = "medbay"

/area/torch/medical/locker
	name = "\improper Medical Locker Room"
	icon_state = "locker"
	req_access = list(access_medical_equip)

/area/torch/medical/physicianoffice
	name = "\improper Physician's Paperwork Office"
	icon_state = "locker"
	req_access = list(access_senmed)

/area/torch/medical/washroom
	name = "\improper Medical Washroom"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED
	req_access = list()

/area/torch/medical/counselor
	name = "\improper Counselor's Office"
	icon_state = "medbay3"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_psychiatrist)
	sound_env = SMALL_SOFTFLOOR

/area/torch/medical/counselor/therapy
	name = "\improper Counselor's Therapy Room"
	icon_state = "medbay3"

/area/torch/medical/sleeper
	name = "\improper Emergency Treatment Centre"
	icon_state = "exam_room"

/area/torch/medical/surgery
	name = "\improper Operating Theatre 1"
	icon_state = "surgery"
	req_access = list(access_surgery)

/area/torch/medical/surgery2
	name = "\improper Operating Theatre 2"
	icon_state = "surgery"
	req_access = list(access_surgery)

/area/torch/medical/staging
	name = "\improper Infirmary Staging"
	icon_state = "patients"
	req_access = list(access_medical)

/area/torch/medical/chemistry
	name = "\improper Chemistry"
	icon_state = "chem"
	req_access = list(access_chemistry)

/area/torch/medical/exam_room
	name = "\improper Exam Room"
	icon_state = "exam_room"

/area/torch/medical/morgue
	name = "\improper Morgue"
	icon_state = "morgue"
	ambience = list('sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg','sound/music/main.ogg')
	req_access = list(list(access_morgue,access_forensics_lockers))

/area/torch/medical/morgue/autopsy
	name = "\improper Autopsy"
	icon_state = "autopsy"

// Misc
/area/torch/teleporter
	name = "\improper Teleporter"
	icon_state = "teleporter"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_teleporter)

/area/torch/eva
	name = "\improper EVA Storage"
	icon_state = "eva"
	req_access = list(access_eva)

/area/torch/aux_eva
	name = "\improper Command EVA Storage"
	icon_state = "eva"
	req_access = list(access_eva)

/area/torch/thruster
	icon_state = "thruster"
	req_access = list(access_engine)

/area/torch/thruster/d1port
	name = "\improper First Deck Port Nacelle"

/area/torch/thruster/d1starboard
	name = "\improper First Deck Starboard Nacelle"

/area/torch/thruster/d3port
	name = "\improper Third Deck Port Nacelle"

/area/torch/thruster/d3starboard
	name = "\improper Third Deck Starboard Nacelle"

/area/torch/engineering/fuelbay
	name = "\improper Fuel Bay"
	icon_state = "engineering"
	req_access = list(access_construction)

/area/torch/engineering/fuelbay/aux
	name = "\improper Auxiliary Fuel Bay"
	icon_state = "engineering"
	req_access = list(access_construction)

/area/torch/engineering/wastetank
	name = "\improper Waste Tank"
	icon_state = "engineering"
	req_access = list(access_atmospherics)

// Command

/area/torch/bridge
	name = "\improper ISEO Endeavour Bridge"
	icon_state = "bridge"
	req_access = list(access_bridge)

/area/torch/bridge/hallway
	name = "\improper Bridge Access Hallway"
	icon_state = "bridge_hallway"
	req_access = list(access_solgov_crew)

/area/torch/bridge/hallway/port
	name = "\improper Bridge Port Access Hallway"

/area/torch/bridge/hallway/starboard
	name = "\improper Bridge Starboard Access Hallway"

/area/torch/bridge/meeting_room
	name = "\improper Command Meeting Room"
	icon_state = "bridge_meeting"
	ambience = list()
	sound_env = MEDIUM_SOFTFLOOR

/area/torch/bridge/disciplinary_board_room
	name = "\improper Disciplinary Board Room"
	sound_env = SMALL_ENCLOSED

/area/torch/bridge/disciplinary_board_room/deliberation
	name = "\improper Deliberation Room"
	sound_env = SMALL_ENCLOSED

/area/torch/crew_quarters/heads
	icon_state = "head_quarters"
	req_access = list(access_heads)

/area/torch/maintenance/substation
	name = "Substation"
	icon_state = "substation"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip)

/area/torch/exterior
	name = "\improper Exterior Reinforcements"
	icon_state = "maint_exterior"
	area_flags = AREA_FLAG_EXTERNAL
	has_gravity = FALSE
	turf_initializer = /decl/turf_initializer/maintenance/space
	req_access = list(access_external_airlocks, access_maint_tunnels)

/area/torch/bridge/ai
	req_access = list(access_ai_upload)
	ambience = list('sound/ambience/ambimalf.ogg')
	sound_env = SMALL_ENCLOSED

/area/torch/bridge/ai/ai
	name = "\improper AI Chamber"
	icon_state = "ai_chamber"

/area/torch/bridge/ai/ai_foyer
	name = "\improper AI Chamber Foyer"
	icon_state = "ai_foyer"

/area/torch/bridge/ai/ai_outer_chamber
	name = "\improper Outer AI Chamber"
	icon_state = "checkpoint"

/area/torch/bridge/ai/ai_upload
	name = "\improper AI Upload"
	icon_state = "checkpoint"


// CentCom

/area/centcom/control
	name = "\improper Centcom Control"

/area/centcom/creed
	name = "Creed's Office"

/area/centcom/evac
	name = "\improper Centcom Emergency Shuttle"

/area/centcom/living
	name = "\improper Centcom Living Quarters"

/area/centcom/suppy
	name = "\improper Centcom Supply Shuttle"

/area/centcom/test
	name = "\improper Centcom Testing Facility"

// Maintenance

/area/torch/maintenance/disposal
	name = "Waste Disposal"
	icon_state = "disposal"

/area/torch/maintenance/waterstore
	name = "\improper Cistern"
	icon_state = "disposal"

// Storage

/area/torch/storage/primary
	name = "Primary Tool Storage"
	icon_state = "primarystorage"

/area/torch/storage/tech
	name = "Technical Storage"
	icon_state = "storage"
	req_access = list(access_tech_storage)

/area/torch/storage/emergency
	name = "Primary Emergency Storage"
	icon_state = "storage"
	req_access = list(access_heads)

/area/torch/storage/tools
	name = "Auxiliary Tool Storage"
	icon_state = "auxstorage"

// Holodecks

/area/holodeck
	name = "\improper Holodeck"
	icon_state = "Holodeck"
	dynamic_lighting = 0
	sound_env = LARGE_ENCLOSED
	//area_flags = AREA_FLAG_NO_MODIFY

/area/holodeck/source_plating
	name = "\improper Holodeck - Off"

/area/holodeck/source_emptycourt
	name = "\improper Holodeck - Empty Court"
	sound_env = ARENA

/area/holodeck/source_boxingcourt
	name = "\improper Holodeck - Boxing Court"
	sound_env = ARENA

/area/holodeck/source_basketball
	name = "\improper Holodeck - Basketball Court"
	sound_env = ARENA

/area/holodeck/source_thunderdomecourt
	name = "\improper Holodeck - Thunderdome Court"
	sound_env = ARENA

/area/holodeck/source_courtroom
	name = "\improper Holodeck - Courtroom"
	sound_env = AUDITORIUM

/area/holodeck/source_beach
	name = "\improper Holodeck - Beach"
	sound_env = PLAIN

/area/holodeck/source_wildlife
	name = "\improper Holodeck - Wildlife Simulation"

/area/holodeck/source_meetinghall
	name = "\improper Holodeck - Meeting Hall"
	sound_env = AUDITORIUM

/area/holodeck/source_theatre
	name = "\improper Holodeck - Theatre"
	sound_env = CONCERT_HALL

/area/holodeck/source_picnicarea
	name = "\improper Holodeck - Picnic Area"
	sound_env = PLAIN

/area/holodeck/source_snowfield
	name = "\improper Holodeck - Snow Field"
	sound_env = FOREST

/area/holodeck/source_desert
	name = "\improper Holodeck - Desert"
	sound_env = PLAIN

/area/holodeck/source_space
	name = "\improper Holodeck - Space"
	has_gravity = 0
	sound_env = SPACE

/area/holodeck/source_cafe
	name = "\improper Holodeck - Cafe"
	sound_env = PLAIN

/area/holodeck/source_volleyball
	name = "\improper Holodeck - Volleyball"
	sound_env = PLAIN

/area/holodeck/source_temple
	name = "\improper Holodeck - Temple"
	sound_env = SMALL_ENCLOSED

/area/holodeck/source_plaza
	name = "\improper Holodeck - Plaza"
	sound_env = SMALL_ENCLOSED

// Engineering

/area/torch/engineering/atmos/storage
	name = "\improper Atmospherics Storage"
	icon_state = "atmos_storage"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_atmospherics)

/area/torch/engineering/engine_room
	name = "\improper Engine Room"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_engine, access_engine_equip)

/area/torch/engineering/drone_fabrication
	name = "\improper Engineering Drone Fabrication"
	icon_state = "drone_fab"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_robotics)

/area/torch/engineering/engine_monitoring
	name = "\improper Engine Monitoring Room"
	icon_state = "engine_monitoring"
	req_access = list(access_engine, access_engine_equip)

/area/torch/engineering/engine_smes
	name = "\improper Engineering SMES"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine, access_engine_equip)

/area/torch/engineering/engineering_monitoring
	name = "\improper Engineering Monitoring Room"
	icon_state = "engine_monitoring"
	req_access = list(access_engine)

/area/torch/engineering/foyer
	name = "\improper Engineering Foyer"
	icon_state = "engineering_foyer"
	req_access = list()

/area/torch/engineering/locker_room
	name = "\improper Engineering Locker Room"
	icon_state = "engineering_locker"
	req_access = list(access_engine)

/area/torch/engineering/engineering_bay
	name = "\improper Engineering Bay"
	icon_state = "engineering_locker"
	req_access = list(access_engine)

/area/torch/engineering/storage
	name = "\improper Engineering Storage"
	icon_state = "engineering_storage"
	req_access = list()

/area/torch/engineering/atmos
	name = "\improper Atmospherics"
	icon_state = "atmos"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_atmospherics)

// Research
/area/torch/assembly
	req_access = list(access_robotics)

/area/torch/assembly/chargebay
	name = "\improper Mech Bay"
	icon_state = "mechbay"

/area/torch/assembly/robotics
	name = "\improper Robotics Workshop"
	icon_state = "robotics"

/area/torch/assembly/robotics/laboratory
	name = "\improper Robotics Laboratory"
	req_access = list(list(access_medical,access_robotics))

/area/torch/assembly/robotics/office
	name = "\improper Robotics Office"

/area/torch/assembly/robotics/surgery
	name = "\improper Robotics Operating Theatre"

/area/torch/research/misc_lab
	name = "\improper Miscellaneous Research"
	icon_state = "misclab"

/area/torch/research/research
	name = "\improper Research Hallway"
	icon_state = "research"

// Shuttles
/area/shuttle/administration/centcom
	name = "\improper Administration Shuttle"
	icon_state = "shuttlered"
	req_access = list(access_cent_general)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/shuttle/escape_pod1/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod2/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod3/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod5/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/torch/supply/dock
	name = "Supply Shuttle"
	icon_state = "shuttle3"
	requires_power = 0
	req_access = list(access_cent_storage)

/area/shuttle/crew_ferry
	name = "Crew Ferry"
	requires_power = FALSE
	dynamic_lighting = TRUE

// Secure

/area/torch/security/nuke_storage
	name = "\improper Vault"
	icon_state = "nuke_storage"
	area_flags = AREA_FLAG_IS_NOT_PERSISTENT
	req_access = list(access_heads_vault)

// Crew

/area/torch/crew_quarters/sleep/cryo
	name = "\improper Third Deck Cryogenic Storage"
	icon_state = "Sleep"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/torch/hydroponics
	name = "\improper Hydroponics"
	icon_state = "hydro"

/area/torch/janitor
	name = "\improper Custodial Closet"
	icon_state = "janitor"
	req_access = list(access_janitor)

/area/torch/janitor/storage
	name = "\improper Custodial Storage Closet"

/area/torch/crew_quarters/sleep/dorms
	icon_state = "Sleep"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/torch/crew_quarters/sleep/dorms/hallway
	name = "\improper Dormitory Hallway"

/area/torch/crew_quarters/sleep/dorms/one
	name = "\improper Cabin One"

/area/torch/crew_quarters/sleep/dorms/two
	name = "\improper Cabin Two"

/area/torch/crew_quarters/sleep/dorms/three
	name = "\improper Cabin Three"

/area/torch/crew_quarters/sleep/dorms/four
	name = "\improper Cabin Four"

// Tcomm
/area/torch/tcommsat/
	ambience = list('sound/ambience/ambisin2.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/ambigen10.ogg')
	req_access = list(access_tcomsat)

/area/torch/tcommsat/chamber
	name = "\improper Telecoms Central Compartment"
	icon_state = "tcomsatcham"

/area/torch/tcommsat/computer
	name = "\improper Telecoms Control Room"
	icon_state = "tcomsatcomp"

// Chapel

/area/torch/chapel/main
	name = "\improper Chapel"
	icon_state = "chapel"
	ambience = list('sound/ambience/ambicha1.ogg','sound/ambience/ambicha2.ogg','sound/ambience/ambicha3.ogg','sound/ambience/ambicha4.ogg','sound/music/traitor.ogg')
	sound_env = LARGE_ENCLOSED

/area/torch/chapel/office
	name = "\improper Chaplain's Office"
	req_access = list(access_chapel_office)
	color = COLOR_GRAY80
	sound_env = SMALL_SOFTFLOOR

// Thunderdome

/area/tdome
	name = "\improper Thunderdome"
	icon_state = "thunder"
	requires_power = 0
	dynamic_lighting = 0
	sound_env = ARENA
	req_access = list(access_cent_thunder)

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


// Cryogenics Station

/area/cryogenics_station
	requires_power = FALSE
	dynamic_lighting = TRUE

/area/cryogenics_station/security
	name = "Cryogenics Station - Checkpoint"
	req_access = list(access_sec_doors)

/area/cryogenics_station/cryogenics
	name = "Cryogenics Station - Main Cryogenic Room"

/area/cryogenics_station/dock
	name = "Cryogenics Station - Docking Hall"
