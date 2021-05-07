/datum/map/labyrinth
	default_law_type = /datum/ai_laws/asimov
	default_job_title = "Crewmember"
	default_job_type = /datum/job/labyrnith/civilian/crewmember
	allowed_jobs = list(
		/datum/job/labyrnith/civilian/crewmember,
		/datum/job/labyrinth/command/director,
		/datum/job/labyrinth/command/logistics_officer,
		/datum/job/labyrinth/engineering/engineer,
		/datum/job/labyrinth/medical/doctor,
		/datum/job/labyrinth/science/researcher
	)

/datum/job/labyrnith

	outfit_type = /decl/hierarchy/outfit/job/labyrnith

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

/datum/job/labyrnith/civilian/crewmember
	title = "Crewmember"
