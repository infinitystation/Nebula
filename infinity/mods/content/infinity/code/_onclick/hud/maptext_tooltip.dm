/client/var/obj/screen/maptext_tooltip/maptext_tooltip

/obj/screen/maptext_tooltip
	icon = null
	icon_state = null
	screen_loc = "TOP, CENTER - 3"
	plane = HUD_PLANE
	layer = UNDER_HUD_LAYER
	maptext_width = 256
	maptext_x = -16
	appearance_flags = PIXEL_SCALE

	var/maptext_state = TRUE
	var/maptext_style = "font-family: 'Small Fonts'; text-shadow: 1px 1px 2px black;"

/obj/screen/maptext_tooltip/proc/set_state(new_state)
	if(new_state == maptext_state)
		return

	maptext_state = new_state

	addtimer(CALLBACK(src, /atom/proc/set_invisibility, maptext_state ? initial(invisibility) : INVISIBILITY_MAXIMUM), maptext_state ? 0 : 10, TIMER_UNIQUE|TIMER_OVERRIDE)
	var/matrix/M = matrix(transform)
	M.Translate(0, maptext_state ? -32 : 32)
	animate(src, transform = M, time = 10, easing = ELASTIC_EASING | maptext_state ? EASE_IN : EASE_OUT)

/client/New(TopicData)
	. = ..()
	maptext_tooltip = new /obj/screen/maptext_tooltip()
	if(mob)
		if(mob.get_preference_value(/datum/client_preference/maptext_tooltip) == GLOB.PREF_SHOW)
			maptext_tooltip.set_state(TRUE)
		else
			maptext_tooltip.set_state(FALSE)

/client/MouseEntered(atom/A, location, control, params)
	. = ..()
	if(maptext_tooltip?.maptext_state && GAME_STATE > RUNLEVEL_SETUP)
		screen |= maptext_tooltip
		maptext_tooltip.maptext = "<b><center><span style=\"color:[COLOR_WHITE];[maptext_tooltip.maptext_style]\">[uppertext(A.name)]</span></center></b>"

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
