/datum/job/constellation/science/researcher
	title = "Researcher"
	total_positions = 2
	spawn_positions = 2

	skill_points = 20

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_EVA = SKILL_BASIC,
		SKILL_COMPUTER = SKILL_BASIC,
		SKILL_DEVICES = SKILL_BASIC,
		SKILL_SCIENCE = SKILL_BASIC,
		SKILL_ANATOMY = SKILL_BASIC,
		SKILL_CHEMISTRY = SKILL_BASIC,
		SKILL_MECH = SKILL_BASIC,
		SKILL_PILOT = SKILL_BASIC
	)

	max_skill = list(
		SKILL_EVA = SKILL_EXPERT,
		SKILL_COMPUTER = SKILL_EXPERT,
		SKILL_DEVICES = SKILL_EXPERT,
		SKILL_SCIENCE = SKILL_EXPERT,
		SKILL_ANATOMY = SKILL_EXPERT,
		SKILL_CHEMISTRY = SKILL_EXPERT,
		SKILL_MECH = SKILL_ADEPT,
		SKILL_HAULING = SKILL_MAX,
		SKILL_PILOT = SKILL_ADEPT
	)

	access = list(
		access_research,
		access_xenoarch,
		access_xenobiology,
		access_robotics,
		access_tox,
		access_tox_storage,
		access_eva,
		access_maint_tunnels,
		access_external_airlocks,
		access_tech_storage
	)
