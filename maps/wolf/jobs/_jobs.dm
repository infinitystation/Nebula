//Job overrides
/datum/job/assistant
	title = "Crewmember"
	alt_titles = list("Trainee Crewmember")
	hud_icon = "hudcargotechnician"
	allowed_ranks = list(/datum/mil_rank/exo/e2, /datum/mil_rank/exo/e3)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs)
	skill_points = 16

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_EVA = SKILL_ADEPT,
		SKILL_HAULING = SKILL_ADEPT,
	)

	max_skill = list(
		SKILL_HAULING = SKILL_MAX
	)

/datum/job/assistant/get_description_blurb()
	var/desc = {"You're a Crewmember aboard the USN Odyssey. Your answer to absolutely everyone. You are a jack of all trades but master of none, answering directly to literally everyone with a preference
	towards the Bosun. You're largely here are spare manpower for expeditions and for Security to call on when needed."}
	return desc

/datum/job/passenger
	title = "Passenger"
	hud_icon = "hudcargotechnician"
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	allowed_branches = list(/datum/mil_branch/civilian)
	skill_points = 8

/datum/job/passenger/get_description_blurb()
	var/desc = {"You're a passenger aboard the USN Odyssey. You answer to everyone. You are probably here to sight-see and observe the inner workings of a ship, and generally make a nuisance of yourself."}
	return desc
