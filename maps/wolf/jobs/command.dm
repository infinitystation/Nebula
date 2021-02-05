/datum/job/wolf/command/captain
	title = "Captain"
	head_position = TRUE
	req_admin_notify = TRUE
	supervisors = "Exoplanetary Affairs Command"
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/wolf/captain
	allowed_ranks = list(/datum/mil_rank/exo/o6)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs)
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_WEAPONS  = SKILL_BASIC,
		SKILL_FINANCE  = SKILL_EXPERT,
		SKILL_PILOT    = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_PILOT =   SKILL_MAX,
		SKILL_FINANCE = SKILL_MAX,
		SKILL_HAULING = SKILL_MAX
	)
	skill_points = 30

/datum/job/wolf/command/captain/get_description_blurb()
	var/desc = {"You are the Captain assigned to the USN Odyssey. In your hands is a significant investment of trust from Exoplanetary Affairs - and the lives of everyone on your ship.
	Lead them well, complete the mission, and come home alive. Your mission is to explore these dangerous border regions for resources the USN can use. Take flora and fauna samples, make contact with unknown colonies and races.
	In between, survive contact with those who might not be so friendly to outsiders. Your ship is highly capable - but only as much as the person leading it."}
	return desc

/datum/job/wolf/command/first_officer
	title = "First Officer"
	head_position = TRUE
	req_admin_notify = TRUE
	supervisors = "the Captain"
	access = list(
		access_security,
		access_sec_doors,
		access_brig,
		access_forensics_lockers,
		access_heads,
		access_medical,
		access_engine,
		access_change_ids,
		access_ai_upload,
		access_eva,
		access_bridge,
		access_all_personal_lockers,
		access_maint_tunnels,
		access_bar,
		access_janitor,
		access_construction,
		access_morgue,
		access_crematorium,
		access_kitchen,
		access_cargo,
		access_cargo_bot,
		access_mailsorting,
		access_qm,
		access_hydroponics,
		access_lawyer,
		access_chapel_office,
		access_library,
		access_research,
		access_mining,
		access_heads_vault,
		access_mining_station,
		access_hop,
		access_RC_announce,
		access_keycard_auth,
		access_gateway,
		access_external_airlocks,
		access_tcomsat,
		access_engine,
		access_armory,
		access_engine_equip,
		access_research
	)
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/wolf/first_officer
	allowed_ranks = list(/datum/mil_rank/exo/o5)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs)
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_WEAPONS  = SKILL_BASIC,
		SKILL_FINANCE  = SKILL_EXPERT,
		SKILL_PILOT    = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_PILOT =   SKILL_MAX,
		SKILL_FINANCE = SKILL_MAX,
		SKILL_HAULING = SKILL_MAX
	)
	skill_points = 30

/datum/job/wolf/command/first_officer/get_description_blurb()
	var/desc = {"You are the First Officer aboard the USN Odyssey. You are the Captain's finger on the pulse of the crew, and the one who executes his orders by passing information down to
	the appropriate departments. You also handle personnel matters and disputes aboard the ship that Security does not need to be involved with. The Bosun is your right hand man, managing supplies
	and organizing salvage efforts. All service personnel report to them."}
	return desc

/datum/job/wolf/command/bridge_officer
	title = "Bridge Officer"
	alt_titles = list("Sensor Operator", "Helmsman")
	supervisors = "every head of staff"
	access = list(access_bridge, access_heads, access_security, access_RC_announce, access_keycard_auth, access_external_airlocks, access_eva)
	total_positions = 2
	spawn_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/wolf/bridge_officer
	allowed_ranks = list(/datum/mil_rank/exo/o1, /datum/mil_rank/exo/o2)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs)
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_WEAPONS  = SKILL_BASIC,
		SKILL_PILOT    = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_PILOT =   SKILL_MAX,
		SKILL_HAULING = SKILL_MAX
	)
	skill_points = 20

/datum/job/wolf/command/bridge_officer/get_description_blurb()
	var/desc = {"You are a bridge officer aboard the USN Odyssey. Not quite high enough on the chain of command to have any real power, your job lies in piloting the ship, operating sensors
	or just keeping watch over the bridge or CIC. You answer to every head of staff aboard the ship, so long as their orders are in the purview of your duties. Expect to spend much time watching
	blinking sensor screens or listening to the First Officer's orders."}
	return desc
