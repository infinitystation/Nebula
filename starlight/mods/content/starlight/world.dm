/world/update_status()
	var/new_status = "<b>[config.server_name]: [station_name()]</b> | \[<a href=\"[config.discordurl]\">Discord</a>\] | "

	if(SSticker.runlevels == RUNLEVEL_POSTGAME)
		new_status += "<b>Mode:</b> ENDING"
	else if(PUBLIC_GAME_MODE)
		new_status += "<b>Mode:</b> [PUBLIC_GAME_MODE]"
	else
		new_status += "<b>Mode:</b> STARTING"

	if(status != new_status)
		status = new_status
