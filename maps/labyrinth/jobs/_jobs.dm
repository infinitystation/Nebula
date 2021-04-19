/datum/map/labyrinth
	default_law_type = /datum/ai_laws/asimov
	default_assistant_title = "Crewmember"
	allowed_jobs = list(
		/datum/job/assistant,
		/datum/job/labyrinth/command/director,
		/datum/job/labyrinth/command/logistics_officer,
		/datum/job/labyrinth/engineering/engineer,
		/datum/job/labyrinth/medical/doctor,
		/datum/job/labyrinth/science/researcher
	)

// God forgive me for this stub
/datum/job/labyrinth
	hud_icon = "hudblank"

/datum/job/assistant
	title = "Crewmember"
	hud_icon = "hudblank"

	skill_points = 16

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_EVA = SKILL_ADEPT,
		SKILL_HAULING = SKILL_ADEPT,
	)

	max_skill = list(
		SKILL_HAULING = SKILL_MAX
	)
