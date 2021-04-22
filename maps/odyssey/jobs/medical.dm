/datum/job/odyssey/medical/CMO
	title = "Chief Medical Officer"
	department_types = list(/decl/department/medical, /decl/department/command)
	access = list()
	head_position = TRUE
	req_admin_notify = TRUE
	supervisors = "the Captain and the First Officer"
	access = list(
		access_medical,
		access_surgery,
		access_medical_equip,
		access_crematorium,
		access_morgue,
		access_eva,
		access_maint_tunnels,
		access_external_airlocks,
		access_cmo,
		access_chemistry,
		access_bridge,
		access_heads,
		access_security,
		access_RC_announce,
		access_keycard_auth
		)
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/odyssey/CMO
	allowed_ranks = list(/datum/mil_rank/exo/o4)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs)

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_MEDICAL = SKILL_ADEPT,
		SKILL_ANATOMY = SKILL_ADEPT,
		SKILL_CHEMISTRY = SKILL_ADEPT,
	)
	max_skill = list(
		SKILL_EVA = SKILL_EXPERT,
		SKILL_MEDICAL = SKILL_MAX,
		SKILL_ANATOMY = SKILL_MAX,
		SKILL_CHEMISTRY = SKILL_MAX,
		SKILL_HAULING = SKILL_MAX
	)
	skill_points = 30

/datum/job/odyssey/medical/CMO/get_description_blurb()
	var/desc = {"You are the Chief Medical Officer aboard the USN Odyssey. Your job is to keep the crew alive and reasonably healthy within your abilities. You oversee the medical department and
	coordinate rescue efforts when in combat, or providing aid to ships in need. You are not front-line personnel - your skills are better used in medical, patching up those who get dragged in from the
	front lines. As the Chief Medical Officer, you are also required to be keenly aware of the crew's overall mental health - and advise the Captain accordingly."}
	return desc


/datum/job/odyssey/medical/medtech
	title = "Medical Support Technician"
	alt_titles = list("Corpsman", "Paramedic")
	access = list(
		access_medical,
		access_surgery,
		access_medical_equip,
		access_crematorium,
		access_morgue,
		access_eva,
		access_maint_tunnels,
		access_external_airlocks,
		)
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/odyssey/medical/medtech
	allowed_ranks = list(/datum/mil_rank/exo/e3, /datum/mil_rank/exo/e4, /datum/mil_rank/civ/contractor, /datum/mil_rank/civ/civ)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs, /datum/mil_branch/civilian)

	min_skill = list(
		SKILL_EVA = SKILL_ADEPT,
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_ANATOMY = SKILL_BASIC,
	)
	max_skill = list(
		SKILL_EVA = SKILL_EXPERT,
		SKILL_MEDICAL = SKILL_EXPERT,
		SKILL_ANATOMY = SKILL_EXPERT,
		SKILL_CHEMISTRY = SKILL_ADEPT,
		SKILL_HAULING = SKILL_MAX
	)
	skill_points = 20

/datum/job/odyssey/medical/medtech/get_description_blurb()
	var/desc = {"You are the Medical Support Technician aboard the USN Odyssey. Your job is to function as a mix between a doctor and paramedic. You exist to rescue people who are in dangerous situations
	who may be injured and in need of urgent medical attention. To this end, you have specialized gear and training that means you are fully capable of preforming EVA rescues in and out of combat.
	You are the front line for those in need. Doctors may accompany you, but they don't have your training and your skills."}
	return desc

/datum/job/odyssey/medical/doctor
	title = "Medical Doctor"
	access = list(
		access_medical,
		access_surgery,
		access_medical_equip,
		access_crematorium,
		access_morgue,
		access_eva,
		access_maint_tunnels,
		access_external_airlocks,
		)
	total_positions = 2
	spawn_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/odyssey/medical/doctor
	allowed_ranks = list(/datum/mil_rank/exo/o3, /datum/mil_rank/civ/contractor, /datum/mil_rank/civ/civ)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs, /datum/mil_branch/civilian)

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_ANATOMY = SKILL_BASIC,
		SKILL_CHEMISTRY = SKILL_BASIC,
	)
	max_skill = list(
		SKILL_EVA = SKILL_EXPERT,
		SKILL_MEDICAL = SKILL_EXPERT,
		SKILL_ANATOMY = SKILL_EXPERT,
		SKILL_CHEMISTRY = SKILL_EXPERT,
		SKILL_HAULING = SKILL_EXPERT
	)
	skill_points = 26

/datum/job/odyssey/medical/doctor/get_description_blurb()
	var/desc = {"You are a Medical Doctor aboard the USN Odyssey. Hired to patch up the gun-slingers and greasemonkeys that run this ship and inevitably get injured in combat, your job is to mind
	the medical bay and keep everything nice and tidy - while waiting for the bodies to roll in. When the going gets tough, you're expected to work under pressure and in conditions that are not ideal.
	The Medbay is somewhat limited in space - so you'll have to keep this in mind when running triage or treating a large volume of patients."}
	return desc

/datum/job/odyssey/medical/pharmacist
	title = "Pharmacist"
	access = list(
		access_medical,
		access_medical_equip,
		access_surgery,
		access_chemistry,
		access_eva,
		access_maint_tunnels,
		access_external_airlocks
		)
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/odyssey/medical/pharmacist
	allowed_ranks = list(/datum/mil_rank/exo/o1, /datum/mil_rank/exo/o2, /datum/mil_rank/civ/contractor, /datum/mil_rank/civ/civ)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs, /datum/mil_branch/civilian)

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_ANATOMY = SKILL_BASIC,
		SKILL_CHEMISTRY = SKILL_ADEPT,
	)
	max_skill = list(
		SKILL_EVA = SKILL_ADEPT,
		SKILL_MEDICAL = SKILL_ADEPT,
		SKILL_ANATOMY = SKILL_ADEPT,
		SKILL_CHEMISTRY = SKILL_MAX,
		SKILL_HAULING = SKILL_MAX
	)
	skill_points = 16

/datum/job/odyssey/medical/pharmacist/get_description_blurb()
	var/desc = {"You are the Pharmacist aboard the USN Odyssey, placed in charge of the Chemistry Lab. Your main function is to make sure Medbay is supplied with a steady stream of useful medicines
	to keep the crew alive with. You also serve as a general dispensary for industrial chemicals that may be required around the ship for various functions. Expect to need to deal with the crew's
	prescriptions as well, and occasionally assist medical in times of crisis with certain minor tasks. You're not a doctor, keep that in mind."}
	return desc
