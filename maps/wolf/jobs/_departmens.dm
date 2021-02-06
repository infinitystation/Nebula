//Civilian
/datum/job/wolf/civilian
	selection_color = COLOR_BEASTY_BROWN
	department_types = list(/decl/department/supply)
	supervisors = "the Bosun"

//Command
/datum/job/wolf/command
	selection_color = COLOR_COMMAND_BLUE
	department_types = list(/decl/department/command)

//Engineering
/datum/job/wolf/engineering
	selection_color = COLOR_AMBER
	department_types = list(/decl/department/engineering)
	supervisors = "the Chief Engineer"
	outfit_type = /decl/hierarchy/outfit/job/wolf/engineering

//Medical
/datum/job/wolf/medical
	selection_color = "#92e7fc"
	department_types = list(/decl/department/medical)
	supervisors = "the Chief Medical Officer"

//Science
/datum/job/wolf/science
	selection_color = COLOR_VIOLET
	department_types = list(/decl/department/exploration)

//Security
/datum/job/wolf/security
	selection_color = COLOR_NT_RED
	department_types = list(/decl/department/security)
	supervisors = "the Security Commander"
