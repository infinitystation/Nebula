/datum/job/wolf/engineering/CE
	title = "Chief Engineer"
	department_refs = list(DEPT_COMMAND,DEPT_ENGINEERING)
	access = list()
	head_position = TRUE
	req_admin_notify = TRUE
	supervisors = "the Captain and the First Officer"
	access = list(
		access_atmospherics,
		access_engine,
		access_tech_storage,
		access_external_airlocks,
		access_maint_tunnels,
		access_engine_equip,
		access_construction,
		access_eva,
		access_network,
		access_ce,
		access_tcomsat,
		access_bridge,
		access_heads,
		access_security,
		access_RC_announce,
		access_keycard_auth
		)
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/wolf/CE
	allowed_ranks = list(/datum/mil_rank/exo/o3)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs)

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_EVA = SKILL_ADEPT,
		SKILL_ENGINES = SKILL_ADEPT,
		SKILL_COMPUTER = SKILL_ADEPT,
		SKILL_CONSTRUCTION = SKILL_ADEPT,
		SKILL_ELECTRICAL = SKILL_ADEPT,
		SKILL_ATMOS = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_EVA = SKILL_MAX,
		SKILL_ENGINES = SKILL_MAX,
		SKILL_COMPUTER = SKILL_MAX,
		SKILL_CONSTRUCTION = SKILL_MAX,
		SKILL_ELECTRICAL = SKILL_MAX,
		SKILL_ATMOS = SKILL_MAX,
		SKILL_MECH = SKILL_ADEPT,
		SKILL_HAULING = SKILL_MAX
	)
	skill_points = 24

/datum/job/wolf/engineering/CE/get_description_blurb()
	var/desc = {"You are the Chief Engineer aboard the USN Odyssey. You are a highly skilled professional at least somewhat understanding of how to coordinate a team of enginers to maintain,
	repair and run a ship like the Odyssey. Given the high-tech nature of many of it's systems, you are likely to be highly educated - or have significant hands-on experience."}
	return desc

/datum/job/wolf/engineering/engineer
	title = "Engineer"
	alt_titles = list("Atmospheric Technician", "Maintenance Technician", "Damage Control Technician")
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
	total_positions = 3
	spawn_positions = 3
	allowed_ranks = list(/datum/mil_rank/exo/e3, /datum/mil_rank/exo/e4, /datum/mil_rank/civ/contractor, /datum/mil_rank/civ/civ)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs, /datum/mil_branch/civilian)

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

/datum/job/wolf/engineering/engineer/get_description_blurb()
	var/desc = {"You are an Engineer aboard the USN Odyssey. A rough and tumble greasemonkey, or a nerd more comfortable with computer systems than fighting, it doesn't matter. You've been hired
	to maintain, repair, and run the Odyssey and execute the Chief Engineer's orders, be those painting the hull or remodeling a department. Your field of expertise and role may vary depending
	on your level of experience, but you're part of the ship's engineering complement - and you can probably tell when something's wrong with her just by the sounds she makes."}
	return desc
