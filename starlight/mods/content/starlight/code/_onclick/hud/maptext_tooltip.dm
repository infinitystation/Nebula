/client/var/obj/screen/maptext_tooltip/maptext_tooltip

/obj/screen/maptext_tooltip
	icon = null
	icon_state = null
	screen_loc = "TOP, CENTER - 3"
	plane = HUD_PLANE
	layer = UNDER_HUD_LAYER
	appearance_flags = PIXEL_SCALE

	maptext_width = 256
	maptext_x = -16

	var/maptext_state = TRUE
	var/maptext_style = "font-family: 'Bahnschrift', Constantia, sans-serif; font-weight: bold; text-shadow: 0px 0px 15px #535ab2;"
	var/maptext_color = "#535ab2"

/obj/screen/maptext_tooltip/proc/set_state(new_state)
	if(new_state == maptext_state)
		return

	maptext_state = new_state

	addtimer(CALLBACK(src, /atom/proc/set_invisibility, maptext_state ? initial(invisibility) : INVISIBILITY_MAXIMUM), maptext_state ? 0 : 10, TIMER_UNIQUE|TIMER_OVERRIDE)
	var/matrix/M = matrix(transform)
	M.Translate(0, maptext_state ? -32 : 32)
	animate(src, transform = M, time = 10, easing = ELASTIC_EASING | maptext_state ? EASE_IN : EASE_OUT)

/datum/preferences/apply_post_login_preferences()
	. = ..()

	if(!client.maptext_tooltip)
		client.maptext_tooltip = new()

	if(client.get_preference_value(/datum/client_preference/maptext_tooltip) == GLOB.PREF_SHOW)
		client.maptext_tooltip.set_state(TRUE)
	else
		client.maptext_tooltip.set_state(FALSE)

/client/MouseEntered(atom/A, location, control, params)
	. = ..()
	if((GAME_STATE > RUNLEVEL_SETUP))
		if(maptext_tooltip?.maptext_state)
			screen |= maptext_tooltip
			if(A.mouse_opacity)
				maptext_tooltip.maptext = "<b><center><span style=\"color:[maptext_tooltip.maptext_color];[maptext_tooltip.maptext_style]\">[uppertext(A.name)]</span></center></b>"
			else
				maptext_tooltip.maptext = ""

/datum/client_preference/maptext_tooltip
	description = "Show Maptext Tooltip"
	key = "SHOW_MAPTEXT_TOOLTIP"
	options = list(GLOB.PREF_SHOW, GLOB.PREF_HIDE)

/datum/client_preference/maptext_tooltip/changed(mob/preference_mob, new_value)
	var/client/C = preference_mob.client
	if(new_value == GLOB.PREF_SHOW)
		C.maptext_tooltip.set_state(TRUE, new_value)
	else
		C.maptext_tooltip.set_state(FALSE)
