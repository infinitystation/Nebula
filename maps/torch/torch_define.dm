/datum/map/torch
	name = "\improper Endeavour"
	full_name = "\improper ISEO Endeavour"
	path = "torch"
	flags = MAP_HAS_BRANCH | MAP_HAS_RANK

	station_levels = list(
		1,
		2,
		3,
		4,
		5,
		6
	)
	contact_levels = list(
		1,
		2,
		3,
		4,
		5,
		6
	)
	accessible_z_levels = list(
		"1" = 1,
		"2" = 3, 
		"3" = 1,
		"4" = 1,
		"5" = 1,
		"6" = 1,
		"9" = 30
	)
	admin_levels = list(
		7
	)
	empty_levels = list(
		9
	)

	overmap_size = 35
	overmap_event_areas = 34
	usable_email_tlds = list(
		"endeavour.issc.iseo", 
		"endeavour.espatier.mil", 
		"freemail.net"
	)

	station_name  = "\improper ISEO Endeavour"
	station_short = "\improper Endeavour"
	dock_name     = "TBD"
	boss_name     = "ISEO Command"
	boss_short    = "Command"
	company_name  = "International Stellar Exploration Organization"
	company_short = "ISEO"

	map_admin_faxes = list(
		"ISEO National Council",
		"ISEO Interstellar Logistics",
		"Espatier Corps Command",
		"Bureau of Diplomatic Affairs",
		"Emergency Management Bureau",
		"Secure Routing Service"
	)

	//These should probably be moved into the evac controller...
	shuttle_docked_message = "Attention all hands: Jump preparation complete. The superluminal shunt is now spooling up, secure all stations for departure. Time to jump: approximately %ETD%."
	shuttle_leaving_dock = "Attention all hands: Jump initiated, exiting shunt-space in %ETA%."
	shuttle_called_message = "Attention all hands: Jump sequence initiated. Transit procedures are now in effect. Jump in %ETA%."
	shuttle_recall_message = "Attention all hands: Jump sequence aborted, return to normal operating conditions."

	evac_controller_type = /datum/evacuation_controller/starship

	use_overmap = TRUE
	num_exoplanets = 2

	away_site_budget = 3
	id_hud_icons = 'maps/torch/icons/assignment_hud.dmi'
