//Civilian
/datum/job/odyssey/civilian
	selection_color = COLOR_BEASTY_BROWN
	department_types = list(/decl/department/supply)
	supervisors = "the Bosun"

//Command
/datum/job/odyssey/command
	selection_color = COLOR_COMMAND_BLUE
	department_types = list(/decl/department/command)

//Engineering
/datum/job/odyssey/engineering
	selection_color = COLOR_AMBER
	department_types = list(/decl/department/engineering)
	supervisors = "the Chief Engineer"
	outfit_type = /decl/hierarchy/outfit/job/odyssey/engineering

//Medical
/datum/job/odyssey/medical
	selection_color = "#92e7fc"
	department_types = list(/decl/department/medical)
	supervisors = "the Chief Medical Officer"

//Science
/datum/job/odyssey/science
	selection_color = COLOR_VIOLET
	department_types = list(/decl/department/exploration)

//Security
/datum/job/odyssey/security
	selection_color = COLOR_NT_RED
	department_types = list(/decl/department/security)
	supervisors = "the Security Commander"
