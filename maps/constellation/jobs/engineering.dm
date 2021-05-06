/datum/job/constellation/engineering/engineer
	title = "Engineer"
	total_positions = 3
	spawn_positions = 3

	outfit_type = /decl/hierarchy/outfit/job/constellation/engineering

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_EVA = SKILL_ADEPT,
		SKILL_ENGINES = SKILL_BASIC,
		SKILL_COMPUTER = SKILL_BASIC,
		SKILL_CONSTRUCTION = SKILL_BASIC,
		SKILL_ELECTRICAL = SKILL_BASIC,
		SKILL_ATMOS = SKILL_BASIC
	)

	max_skill = list(
		SKILL_EVA = SKILL_EXPERT,
		SKILL_ENGINES = SKILL_EXPERT,
		SKILL_COMPUTER = SKILL_EXPERT,
		SKILL_CONSTRUCTION = SKILL_EXPERT,
		SKILL_ELECTRICAL = SKILL_EXPERT,
		SKILL_ATMOS = SKILL_EXPERT,
		SKILL_MECH = SKILL_ADEPT,
		SKILL_HAULING = SKILL_MAX
	)

	access = list(
		access_atmospherics,
		access_engine,
		access_tech_storage,
		access_external_airlocks,
		access_maint_tunnels,
		access_engine_equip,
		access_construction,
		access_eva,
		access_engine_equip
		)

	alt_titles = list(
		"Atmospheric Technician",
		"Maintenance Technician",
		"Damage Control Technician"
	)
