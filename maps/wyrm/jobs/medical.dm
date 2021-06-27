/datum/job/wyrm/medical/doctor
	title = "Junior Doctor"
	supervisors = "the Surgeon's expertise and the Captain"
	total_positions = 2
	spawn_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/wyrm/doctor
	skill_points = 24
	min_skill = list(
		SKILL_LITERACY  = SKILL_ADEPT,
	    SKILL_MEDICAL   = SKILL_EXPERT,
	    SKILL_ANATOMY   = SKILL_EXPERT,
	    SKILL_CHEMISTRY = SKILL_BASIC
	)
	max_skill = list(
		SKILL_MEDICAL   = SKILL_MAX,
	    SKILL_ANATOMY   = SKILL_MAX,
	    SKILL_CHEMISTRY = SKILL_MAX
	)
	minimal_player_age = 3
	selection_color = "#013d3b"
	economic_power = 3
	access = list(
		access_medical,
		access_medical_equip,
		access_morgue,
		access_surgery,
		access_chemistry,
		access_virology,
		access_eva,
		access_maint_tunnels
	)
	minimal_access = list(
		access_medical,
		access_medical_equip,
		access_morgue,
		access_surgery,
		access_virology,
		access_eva,
		access_maint_tunnels
	)
	alt_titles = list(
		"Chemist" = /decl/hierarchy/outfit/job/wyrm/doctor/chemist,
		"Psychologist"
	)

/datum/job/wyrm/medical/doctor/surgeon
	title = "Surgeon"
	supervisors = "the Captain and your own ethics"
	outfit_type = /decl/hierarchy/outfit/job/wyrm/doctor/surgeon
	total_positions = 1
	spawn_positions = 1
	skill_points = 28
	guestbanned = 1
	must_fill = 1
	not_random_selectable = 1
	selection_color = "#026865"
	req_admin_notify = 1
	economic_power = 5
	access = list(
		access_medical,
		access_medical_equip,
		access_morgue,
		access_chemistry,
		access_virology,
		access_cmo,
		access_surgery,
		access_RC_announce,
		access_keycard_auth,
		access_sec_doors,
		access_psychiatrist,
		access_eva,
		access_maint_tunnels
	)
	minimal_access = list(
		access_medical,
		access_medical_equip,
		access_morgue,
		access_chemistry,
		access_virology,
		access_cmo,
		access_surgery,
		access_RC_announce,
		access_keycard_auth,
		access_sec_doors,
		access_psychiatrist,
		access_eva,
		access_maint_tunnels
	)
	minimal_player_age = 14
	ideal_character_age = 50
	alt_titles = list()