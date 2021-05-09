/datum/map/constellation
	default_law_type = /datum/ai_laws/corporate
	default_job_title = "Crewmember"
	default_job_type = /datum/job/constellation/civilian/crewmember
	allowed_jobs = list(
		/datum/job/constellation/civilian/crewmember,
		/datum/job/constellation/command/captain,
		/datum/job/constellation/command/logistics_officer,
		/datum/job/constellation/engineering/engineer,
		/datum/job/constellation/medical/doctor,
		/datum/job/constellation/science/researcher
	)

/datum/job/constellation

	outfit_type = /decl/hierarchy/outfit/job/constellation

	skill_points = 16

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_EVA = SKILL_ADEPT,
		SKILL_HAULING = SKILL_ADEPT,
	)

	max_skill = list(
		SKILL_HAULING = SKILL_MAX
	)

	hud_icon = "hudblank"

/datum/job/constellation/civilian/crewmember
	title = "Crewmember"

	total_positions = -1
	spawn_positions = -1

	access = list()
	minimal_access = list()

	economic_power = 1

	alt_titles = list(
		"Technical Assistant",
		"Medical Intern",
		"Research Assistant"
	)
