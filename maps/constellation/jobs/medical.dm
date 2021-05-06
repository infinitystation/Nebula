/datum/job/constellation/medical/doctor
	title = "Medical Doctor"
	total_positions = 2
	spawn_positions = 2

	skill_points = 26

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_ANATOMY = SKILL_BASIC,
		SKILL_CHEMISTRY = SKILL_BASIC,
	)

	max_skill = list(
		SKILL_EVA = SKILL_EXPERT,
		SKILL_MEDICAL = SKILL_EXPERT,
		SKILL_ANATOMY = SKILL_EXPERT,
		SKILL_CHEMISTRY = SKILL_EXPERT,
		SKILL_HAULING = SKILL_EXPERT
	)

	access = list(
		access_medical,
		access_medical_equip,
		access_surgery,
		access_chemistry,
		access_crematorium,
		access_morgue,
		access_eva,
		access_maint_tunnels,
		access_external_airlocks
	)
