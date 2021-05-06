/datum/map/constellation
	default_law_type = /datum/ai_laws/corporate
	default_assistant_title = "Crewmember"
	allowed_jobs = list(
		/datum/job/assistant,
		/datum/job/constellation/command/captain,
		/datum/job/constellation/command/logistics_officer,
		/datum/job/constellation/engineering/engineer,
		/datum/job/constellation/medical/doctor,
		/datum/job/constellation/science/researcher
	)

// God forgive me for this stub
/datum/job/constellation
	hud_icon = "hudblank"

/datum/job/assistant
	title = "Crewmember"

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
