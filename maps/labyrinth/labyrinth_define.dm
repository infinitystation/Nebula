/datum/map/labyrinth
	path = "labyrinth"

	name           = "Labyrinth"
	full_name      = "Labyrinth Facility"
	station_name   = "Labyrinth Facility"
	station_short  = "Labyrinth"

	dock_name      = "Patrol Headquarters"
	boss_name      = "Automatia #53"
	boss_short     = "Automatia"
	company_name   = "Centrius"
	company_short  = "CUS"

	station_levels = list(1,2,3)
	contact_levels = list(1,2,3)
	player_levels  = list(1,2,3)
	admin_levels   = list(4)

	use_overmap         = TRUE
	overmap_event_areas = 6
	num_exoplanets      = 2

	welcome_sound = 'maps/labyrinth/media/welcome.ogg'

	starting_money = 5000
	department_money = 0
	salary_modifier = 0.2

	allowed_spawns = list("Cryogenic Storage")
	default_spawn  = "Cryogenic Storage"

	radiation_detected_message = "High levels of radiation have been detected in proximity of the %STATION_NAME%. Ensure that all areas all shielded properly. EVA cut recommended."

	emergency_shuttle_leaving_dock   = "Attention all hands: the escape pods have been launched, maintaining burn for %ETA%."
	emergency_shuttle_called_message = "Attention all hands: emergency evacuation procedures are now in effect. Escape pods will launch in %ETA%"
	emergency_shuttle_recall_message = "Attention all hands: emergency evacuation sequence aborted. Return to normal operating conditions."
	evac_controller_type             = /datum/evacuation_controller/lifepods

	radiation_detected_sound     = 'starlight/mods/content/interpack/sound/announcements/threat.ogg'
	space_time_anomaly_sound     = 'starlight/mods/content/interpack/sound/announcements/subspace.ogg'
	unidentified_lifesigns_sound = 'starlight/mods/content/interpack/sound/announcements/threat.ogg'
	command_report_sound         = 'starlight/mods/content/interpack/sound/announcements/attention.ogg'
	grid_check_sound             = 'starlight/mods/content/interpack/sound/announcements/warning.ogg'
	grid_restored_sound          = 'starlight/mods/content/interpack/sound/announcements/warning.ogg'
	meteor_detected_sound        = 'starlight/mods/content/interpack/sound/announcements/threat.ogg'

/datum/map/labyrinth/get_map_info()
	return "Welcome to \the [station_name()]. A planet colony filled with people who decide to explore and found this planet in the deep of space."
