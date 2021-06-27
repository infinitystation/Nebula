/datum/job/wyrm
	hud_icon = "hudblank"

/datum/job/wyrm/civilian/crewmember
	title = "Crewmember"
	total_positions = -1
	spawn_positions = -1
	event_categories = list("Janitor", "Gardener")
	supervisors = "the First Mate, if they ever asked"
	alt_titles = list(
		"Assistant",
		"Cook" = /decl/hierarchy/outfit/job/wyrm/hand/cook,
		"Librarian" = /decl/hierarchy/outfit/job/wyrm/librarian,
		"Journalist" = /decl/hierarchy/outfit/job/wyrm/journalist
	)
	access = list(
		access_eva,
		access_maint_tunnels
	)
