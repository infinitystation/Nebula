/datum/job/wolf/security/SSC
	title = "Ship Security Commander"
	department_refs = list(DEPT_COMMAND,DEPT_SECURITY)
	head_position = TRUE
	req_admin_notify = TRUE
	supervisors = "the Captain and the First Officer"
	access = list(access_security,
		access_brig,
		access_sec_doors,
		access_forensics_lockers,
		access_armory,
		access_bridge,
		access_heads,
		access_security,
		access_RC_announce,
		access_keycard_auth,
		access_hos,
		access_medical,
		access_engine,
		access_cargo,
		access_research,
		access_external_airlocks,
		access_maint_tunnels,
		access_eva,
		access_sec_doors
		)
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/wolf/SSC
	allowed_ranks = list(/datum/mil_rank/exo/o3)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs)

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_WEAPONS  = SKILL_ADEPT,
		SKILL_EVA = SKILL_ADEPT,
		SKILL_FORENSICS = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_WEAPONS = SKILL_MAX,
		SKILL_EVA = SKILL_MAX,
		SKILL_FORENSICS = SKILL_MAX,
		SKILL_HAULING = SKILL_MAX
	)
	skill_points = 24

/datum/job/wolf/security/SSC/get_description_blurb()
	var/desc = {"You are the Ship Security Commander aboard the USN Odyssey. Chosen for your ability to lead or your skills, you've been placed in charge of the ship's security. A serious task
	considering where it's main area of operations is. Under your purview are a handful of security staff, and the power to deputize anyone who you see fit. Your underlings man it's weapons, and keep the crew in good order.
	When in combat, you may be right by their side repelling boarders - and watching them die. Give your orders carefully, for life is precious on the frontier."}
	return desc

/datum/job/wolf/security/brig_chief
	title = "Brig Chief"
	alt_titles = list("Senior Armsman")
	access = list(access_security, access_brig, access_sec_doors, access_forensics_lockers, access_armory, access_external_airlocks, access_maint_tunnels, access_eva)
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/wolf/security/brig_chief
	allowed_ranks = list(/datum/mil_rank/exo/e5)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs)

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_WEAPONS  = SKILL_ADEPT,
		SKILL_EVA = SKILL_ADEPT,
		SKILL_FORENSICS = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_WEAPONS = SKILL_EXPERT,
		SKILL_EVA = SKILL_EXPERT,
		SKILL_FORENSICS = SKILL_EXPERT,
		SKILL_HAULING = SKILL_MAX
	)
	skill_points = 20

/datum/job/wolf/security/brig_chief/get_description_blurb()
	var/desc = {"You are the Brig Chief aboard the USN Odyssey. Your job is to watch over the brig and armory while maintaining a careful eye on any crew or captured individuals who've been placed
	within your brig. When the situation requires it, your job also mandates that you open the ship's armory and hand out weapons to the Armsmen or those the HoS has deputized to act in defense of the ship.
	Additionally, your duties include making sure the brig is well-supplied for any occasion - be it mundane items like food and ammo, to medical supplies for when the floors are red with blood."}
	return desc

/datum/job/wolf/security/armsmen
	title = "Armsman"
	access = list(access_security, access_brig, access_sec_doors, access_forensics_lockers, access_external_airlocks, access_maint_tunnels, access_eva)
	total_positions = 2
	spawn_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/wolf/security/armsman
	allowed_ranks = list(/datum/mil_rank/exo/e3, /datum/mil_rank/exo/e4)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs)

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_WEAPONS  = SKILL_ADEPT,
		SKILL_EVA = SKILL_ADEPT,
		SKILL_FORENSICS = SKILL_BASIC
	)
	max_skill = list(
		SKILL_WEAPONS = SKILL_EXPERT,
		SKILL_EVA = SKILL_MAX,
		SKILL_FORENSICS = SKILL_ADEPT,
		SKILL_HAULING = SKILL_MAX
	)
	skill_points = 16

/datum/job/wolf/security/armsmen/get_description_blurb()
	var/desc = {"You are an Armsman aboard the USN Odyssey. A fancy word for a hired gun - You might be exmilitary or some career member of EXO. Your job is to keep the crew in order and arrest any who violate ship's regulations, and to defend the ship by
	repelling boarders, operating weaponry and in general acting as a security force for any occasion, including away missions to gather supplies or explore exoworlds. Your life is hardly expendable
	for there is no easy way back from death on the Frontier. Consider your actions carefully - and remember, without the ship, nobody goes home."}
	return desc

/datum/job/wolf/security/gunship_pilot
	title = "Gunship Pilot"
	access = list(access_security, access_brig, access_sec_doors, access_forensics_lockers, access_external_airlocks, access_maint_tunnels, access_eva)
	total_positions = 0
	spawn_positions = 0
	outfit_type = 	/decl/hierarchy/outfit/job/wolf/security/gunship_pilot

/datum/job/wolf/security/gunship_pilot/get_description_blurb()
	var/desc = {"You are a Gunship Pilot aboard the USN Odyssey. The chances are that either you showed enough aptitude in a simulator for FENRIS to pay your way in exchange for a contract,
	or you are ex-military aviation. Regardless of your origins, your job is to pilot the ship's gunship, designed to support the Odyssey in combat, or deliver boarding parties when required.
	You are not front-line personnel. In an emergency, you may be pressed into service, but your job is first and foremost to fly the gunship, and maybe the ship's salvage shuttle."}
	return desc
