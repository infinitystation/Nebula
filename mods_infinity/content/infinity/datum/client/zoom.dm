/atom/MouseWheel(delta_x, delta_y, location, control, params)
	if(atom_flags & ATOM_FLAG_INITIALIZED)
		usr.MouseWheelOn(src, delta_x, delta_y, params)

/mob/proc/MouseWheelOn(atom/A, delta_x, delta_y, params)
	var/list/modifiers = params2list(params)
	if(LAZYACCESS(modifiers, "shift"))
		var/current_zoom = text2num(winget(client, "mapwindow.map", "zoom"))
		var/add_zoom
		if(delta_y > 0)
			add_zoom = 0.5
		else
			add_zoom = -0.5
	
		if((current_zoom + add_zoom) < 2)
			return

		if((current_zoom + add_zoom) > 10)
			return
		
		winset(client, "mapwindow.map", "zoom=[current_zoom + add_zoom]")
