/world/update_status()
	var/s = "<b>[config.server_name]: [station_name()]</b> | \[<a href=\"[config.discordurl]\">Discord</a>\] | "

	if(SSticker.runlevels == RUNLEVEL_POSTGAME)
		s += "<b>Mode:</b> ENDING"
	else if(PUBLIC_GAME_MODE)
		s += "<b>Mode:</b> [PUBLIC_GAME_MODE]"
	else
		s += "<b>Mode:</b> STARTING"

	if(status != s) status = s
