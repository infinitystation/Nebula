/datum/map/odyssey
	name = "Odyssey"
	full_name = "USN Odyssey"
	path = "odyssey"

	flags = MAP_HAS_BRANCH | MAP_HAS_RANK

	station_levels = list(1, 2, 3, 4)
	contact_levels = list(1, 2, 3, 4)
	player_levels  = list(1, 2, 3, 4)
	admin_levels   = list(5)

	station_name  = "USN Odyssey"
	station_short = "Odyssey"

	dock_name     = "USN Far Reach"
	boss_name     = "Exoplanetary Affairs Command"
	boss_short    = "Exoplanetary Affairs"
	company_name  = "Exoplanetary Affairs"
	company_short = "EXA"

	overmap_event_areas = 11
	use_overmap = 1
	num_exoplanets = 3

	id_hud_icons = 'maps/odyssey/icons/hud.dmi'

	emergency_shuttle_leaving_dock = "Attention all hands: escape pods are now launching. Brace for acceleration."
	emergency_shuttle_called_message = "Attention all hands: emergency evacuation procedures are now in effect. Escape pods will launch in %ETA%"
	emergency_shuttle_recall_message = "Attention all hands: emergency evacuation sequence aborted. Return to normal operating conditions."

	starting_money = 5000
	department_money = 0
	salary_modifier = 0.2

	lobby_screens = list(
		'maps/odyssey/icons/odyssey_lobby.gif'
	)

	radiation_detected_sound     = 'starlight/mods/content/starlight/datum/sound/announcements/threat.ogg'
	space_time_anomaly_sound     = 'starlight/mods/content/starlight/datum/sound/announcements/subspace.ogg'
	unidentified_lifesigns_sound = 'starlight/mods/content/starlight/datum/sound/announcements/threat.ogg'
	command_report_sound         = 'starlight/mods/content/starlight/datum/sound/announcements/attention.ogg'
	grid_check_sound             = 'starlight/mods/content/starlight/datum/sound/announcements/warning.ogg'
	grid_restored_sound          = 'starlight/mods/content/starlight/datum/sound/announcements/warning.ogg'
	meteor_detected_sound        = 'starlight/mods/content/starlight/datum/sound/announcements/threat.ogg'

/datum/map/odyssey/get_map_info()
	return "You're aboard the <b>[station_name],</b> an exploration vessel owned by the USN and operated by the Department of Exoplanetary Affairs. \
	Welcome to the deep frontier, it will be your home and place of employment for however long your enlistment or contract with Exoplanetary Affairs lasts, you're likely light years away from your real home now and in the deepest reaches of barely known space where all sorts of undesirables love to hide, this gives you a job. This also means you can't trust anybody outside of your crew, and even those within your crew should be looked at with a skeptical eye, even then they're all you have left now. It's just you, the rest of the crew, and the [station_short]."
