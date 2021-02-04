/datum/job/wolf/science/TD
	title = "Technology Director"
	department_refs = list(DEPT_COMMAND,DEPT_EXPLORATION)
	head_position = TRUE
	req_admin_notify = TRUE
	supervisors = "the Captain and the First Officer"
	alt_titles = list("Chief Science Officer")
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
		access_rd,
		access_tech_storage,
		access_network,
		access_bridge,
		access_heads,
		access_security,
		access_RC_announce,
		access_keycard_auth
		)
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/wolf/TD
	allowed_ranks = list(/datum/mil_rank/exo/o3)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs)

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_EVA = SKILL_BASIC,
		SKILL_COMPUTER = SKILL_ADEPT,
		SKILL_DEVICES = SKILL_ADEPT,
		SKILL_SCIENCE = SKILL_ADEPT,
		SKILL_ANATOMY = SKILL_BASIC,
		SKILL_CHEMISTRY = SKILL_BASIC,
		SKILL_MECH = SKILL_BASIC,
		SKILL_PILOT = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_EVA = SKILL_EXPERT,
		SKILL_COMPUTER = SKILL_MAX,
		SKILL_DEVICES = SKILL_MAX,
		SKILL_SCIENCE = SKILL_MAX,
		SKILL_ANATOMY = SKILL_MAX,
		SKILL_CHEMISTRY = SKILL_MAX,
		SKILL_MECH = SKILL_ADEPT,
		SKILL_HAULING = SKILL_MAX,
		SKILL_PILOT = SKILL_ADEPT
	)
	skill_points = 26


/datum/job/wolf/science/TD/get_description_blurb()
	var/desc = {"You are the Technology Director aboard the USN Odyssey. Almost a token position, all things considered, given the fact that it is a converted warship. Regardless, you do have a role to
	fulfill. You are placed in charge of directing the Salvage Technicians to recover any technology that may be of interest for research and development - or sold for a pretty penny by your
	bosses when the ship docks. You are additionally in charge of making sure all the departments have the machinery and parts they need to function correctly - and of course, the ship's network."}
	return desc

/datum/job/wolf/science/research_tech
	title = "Research Technician"
	alt_titles = list("Xenobiologist", "Xenoarcheologist", "Xenobotanist")
	supervisors = "the Technology Director"
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
	total_positions = 2
	spawn_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/wolf/research/research_tech
	allowed_ranks = list(/datum/mil_rank/exo/o1, /datum/mil_rank/exo/o2, /datum/mil_rank/civ/contractor, /datum/mil_rank/civ/civ)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs, /datum/mil_branch/civilian)

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
	skill_points = 20

/datum/job/wolf/science/research_tech/get_description_blurb()
	var/desc = {"You are a Research Technician aboard the USN Odyssey. Grants are hard to get, and a bunk on a proper science ship even harder to get. Sometimes you have to compromise. You are here
	to either find whatever you can while the ship patrols, or hired by the USN to assist the Technology Director in their mission of making sure that the ship's machinery and such are functioning
	at peak preformance. You may additional persue your academic desires, given the blessing of the Captain."}
	return desc

/datum/job/wolf/science/robotics
	title = "Robotics Specialist"
	access = list(
		access_research,
		access_robotics,
		access_maint_tunnels,
		access_tech_storage
		)
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/wolf/research/robotics
	allowed_ranks = list(/datum/mil_rank/exo/o1, /datum/mil_rank/exo/o2, /datum/mil_rank/civ/contractor, /datum/mil_rank/civ/civ)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs, /datum/mil_branch/civilian)

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_EVA = SKILL_BASIC,
		SKILL_COMPUTER = SKILL_BASIC,
		SKILL_DEVICES = SKILL_BASIC,
		SKILL_SCIENCE = SKILL_BASIC,
		SKILL_ANATOMY = SKILL_BASIC,
		SKILL_MECH = SKILL_ADEPT,
	)
	max_skill = list(
		SKILL_EVA = SKILL_EXPERT,
		SKILL_COMPUTER = SKILL_EXPERT,
		SKILL_DEVICES = SKILL_EXPERT,
		SKILL_SCIENCE = SKILL_EXPERT,
		SKILL_ANATOMY = SKILL_ADEPT,
		SKILL_MECH = SKILL_ADEPT,
		SKILL_HAULING = SKILL_MAX
	)
	skill_points = 20

/datum/job/wolf/science/robotics/get_description_blurb()
	var/desc = {"You are the Robotics Specialist aboard the USN Odyssey. Given the tendency for full-body-prosthetic crew members and unlawed IPCs to take damage during combat - be it boarding
	or just being in the wrong place at the wrong time, you exist to maintain and repair these crew members, as well as build mechs when required to do so. You work very closely with medical,
	as you are not a surgeon, and your work may involve cyborgification operations. You do get a snazzy jumpsuit, too."}
	return desc
