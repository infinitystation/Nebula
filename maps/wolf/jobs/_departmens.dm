//Civilian
/datum/job/wolf/civilian
	selection_color = COLOR_BEASTY_BROWN
	department_refs = list(DEPT_SUPPLY)
	supervisors = "the Bosun"

//Command
/datum/job/wolf/command
	selection_color = COLOR_COMMAND_BLUE
	department_refs = list(DEPT_COMMAND)

//Engineering
/datum/job/wolf/engineering
	selection_color = COLOR_AMBER
	department_refs = list(DEPT_ENGINEERING)
	supervisors = "the Chief Engineer"
	outfit_type = /decl/hierarchy/outfit/job/wolf/engineering

//Medical
/datum/job/wolf/medical
	selection_color = "#92e7fc"
	department_refs = list(DEPT_MEDICAL)
	supervisors = "the Chief Medical Officer"

//Science
/datum/job/wolf/science
	selection_color = COLOR_VIOLET
	department_refs = list(DEPT_EXPLORATION)

//Security
/datum/job/wolf/security
	selection_color = COLOR_NT_RED
	department_refs = list(DEPT_SECURITY)
	supervisors = "the Security Commander"
