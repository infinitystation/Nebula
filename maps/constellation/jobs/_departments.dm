// Command
/datum/job/constellation/command
	selection_color = "#46698c"
	department_types = list(/decl/department/command)
	supervisors = "your conscience, law, and command orders"

// Engineering
/datum/job/constellation/engineering
	selection_color = "#ffbf00"
	department_types = list(/decl/department/engineering)
	supervisors = "the Captain and your wrench"
	outfit_type = /decl/hierarchy/outfit/job/constellation/engineering

// Medical
/datum/job/constellation/medical
	selection_color = "#92e7fc"
	department_types = list(/decl/department/medical)
	supervisors = "the Captain and the hippocratic oath"
	outfit_type = /decl/hierarchy/outfit/job/constellation/medical

// Science
/datum/job/constellation/science
	selection_color = "#9933ff"
	department_types = list(/decl/department/science)
	supervisors = "the Captain and your big brains"
	outfit_type = /decl/hierarchy/outfit/job/constellation/science

// Security (TODO)
/datum/job/constellation/security
	selection_color = "#9d2300"
	department_types = list(/decl/department/security)
	supervisors = "the Captain and your strong arms"

// Civilian
/datum/job/constellation/civilian
	selection_color = "#dddddd"
	department_types = list(/decl/department/civilian)
	supervisors = "the Captain and your lazy bone"
