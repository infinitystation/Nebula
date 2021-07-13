/datum/job/wyrm
	hud_icon = "hudblank"

// Command
/datum/job/wyrm/command
	department_types = list(/decl/department/command)
	supervisors = "your conscience, law, and command orders"

// Engineering
/datum/job/wyrm/engineering
	department_types = list(/decl/department/engineering)
	supervisors = "the Captain and your wrench"
	event_categories = list(ASSIGNMENT_ENGINEER)

// Medical
/datum/job/wyrm/medical
	department_types = list(/decl/department/medical)
	supervisors = "the Captain and the hippocratic oath"
	event_categories = list(ASSIGNMENT_MEDICAL)

// Science
/datum/job/wyrm/science
	department_types = list(/decl/department/science)
	supervisors = "the Captain and your big brains"
	event_categories = list(ASSIGNMENT_SCIENTIST)

// Supply
/datum/job/wyrm/supply
	department_types = list(/decl/department/supply)
	supervisors = "the Captain and your logistics calculations"
	event_categories = list(ASSIGNMENT_SUPPLY)

/datum/job/wyrm/miscellaneous
	department_types = list(/decl/department/miscellaneous)

// Civilian
/datum/job/wyrm/civilian
	department_types = list(/decl/department/civilian)
	supervisors = "the Captain and your lazy bone"
	event_categories = list(ASSIGNMENT_GARDENER, ASSIGNMENT_JANITOR)

/datum/job/wyrm/civilian/crewmember
	title = "Crewmember"
	total_positions = -1
	spawn_positions = -1
	event_categories = list("Janitor", "Gardener")
	supervisors = "the First Mate, if they ever asked"
	outfit_type = /decl/hierarchy/outfit/job/wyrm/crewmember
	alt_titles = list(
		"Assistant",
		"Cook" = /decl/hierarchy/outfit/job/wyrm/crewmember/cook,
		"Librarian" = /decl/hierarchy/outfit/job/wyrm/librarian,
		"Journalist" = /decl/hierarchy/outfit/job/wyrm/journalist
	)
	access = list(
		access_eva,
		access_maint_tunnels
	)
