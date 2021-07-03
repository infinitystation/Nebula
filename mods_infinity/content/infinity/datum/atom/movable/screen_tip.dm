/client/var/atom/movable/screentip/screentip

/atom/movable/screentip
	icon = null
	screen_loc = "TOP, CENTER - 3"
	plane = HUD_PLANE
	layer = UNDER_HUD_LAYER
	appearance_flags = PIXEL_SCALE

	maptext_width = 256
	maptext_x = -16

	var/maptext_state = TRUE
	var/maptext_style = "text-align: center; font-family: 'Small Fonts'; font-size: 32px; -dm-text-outline: 1px black; line-height: 1.1;"
	var/maptext_color = "#ffd391"

	var/matrix/start_transform
	var/transform_delay = 0.7 SECOND

/atom/movable/screentip/Initialize()
	var/matrix/M = matrix()
	M.Scale(x = 1, y = 0)
	start_transform = M
	. = ..()

/atom/movable/screentip/proc/set_state(new_state)
	if(new_state == maptext_state)
		return

	maptext_state = new_state

	if(maptext_state)
		animate(src, transform = matrix(), time = transform_delay, easing = QUAD_EASING)
	else
		animate(src, transform = start_transform, time = transform_delay, easing = QUAD_EASING)

	addtimer(CALLBACK(src, /atom/proc/set_invisibility, maptext_state ? initial(invisibility) : INVISIBILITY_MAXIMUM), maptext_state ? 0 : 10, TIMER_UNIQUE|TIMER_OVERRIDE)

/datum/preferences/apply_post_login_preferences()
	. = ..()

	if(!client)
		return

	if(!client.screentip)
		client.screentip = new()

	if(client.get_preference_value(/datum/client_preference/screentip) == PREF_SHOW)
		client.screentip.set_state(TRUE)
	else
		client.screentip.set_state(FALSE)

/client/MouseEntered(atom/A, location, control, params)
	. = ..()

	if((GAME_STATE > RUNLEVEL_SETUP))
		if(screentip?.maptext_state)
			screen |= screentip
			if(A.mouse_opacity)
				screentip.maptext = "<span style=\"color:[screentip.maptext_color];[screentip.maptext_style]\">[uppertext(A.name)]</span>"
			else
				screentip.maptext = ""

/datum/client_preference/screentip
	description = "Show Screentip"
	key = "SHOW_SCREENTIP"
	options = list(PREF_SHOW, PREF_HIDE)

/datum/client_preference/screentip/changed(mob/preference_mob, new_value)
	var/client/C = preference_mob.client

	if(!C)
		return

	if(!C.screentip)
		C.screentip = new()

	if(new_value == PREF_SHOW)
		C.screentip.set_state(TRUE)
	else
		C.screentip.set_state(FALSE)
