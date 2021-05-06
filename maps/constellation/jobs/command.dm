/datum/job/constellation/command/captain
	title = "Captain"
	total_positions = 1
	spawn_positions = 1

	outfit_type = /decl/hierarchy/outfit/job/constellation/captain

	skill_points = 30

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_WEAPONS  = SKILL_BASIC,
		SKILL_FINANCE  = SKILL_EXPERT,
		SKILL_PILOT    = SKILL_ADEPT
	)

	max_skill = list(
		SKILL_PILOT   = SKILL_MAX,
		SKILL_FINANCE = SKILL_MAX,
		SKILL_HAULING = SKILL_MAX
	)

	minimal_player_age    = 14
	economic_power        = 20
	ideal_character_age   = 70

	head_position         = TRUE
	req_admin_notify      = TRUE
	guestbanned           = TRUE
	must_fill             = TRUE
	not_random_selectable = TRUE

/datum/job/constellation/command/captain/get_access()
	return get_all_station_access()

/datum/job/constellation/command/logistics_officer
	title = "Logistics Officer"

	total_positions = 1
	spawn_positions = 1

	outfit_type = /decl/hierarchy/outfit/job/constellation/logistics_officer

	supervisors = "the Captain"

	skill_points = 30

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_WEAPONS  = SKILL_BASIC,
		SKILL_FINANCE  = SKILL_EXPERT,
		SKILL_PILOT    = SKILL_ADEPT
	)

	max_skill = list(
		SKILL_PILOT   = SKILL_MAX,
		SKILL_FINANCE = SKILL_MAX,
		SKILL_HAULING = SKILL_MAX
	)

	head_position = TRUE
	req_admin_notify = TRUE

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
