// smart mode feature for light switches. Ported from Infinity Station.
// Feature by Archemagus (aka Laxesh).

#define SMART_MODE_MANUAL "Manual"
#define SMART_MODE_ONLY_OFF "Only Off"
#define SMART_MODE_FULL_AUTO "Full Auto"

/obj/machinery/light_switch
	var/smart_mode = SMART_MODE_MANUAL
	var/list/smart_mode_list = list(SMART_MODE_MANUAL, SMART_MODE_ONLY_OFF, SMART_MODE_FULL_AUTO)

/obj/machinery/light_switch/examine(mob/user, distance)
	. = ..()
	if(distance)
		to_chat(user, "Auto mode: [smart_mode]")

/obj/machinery/light_switch/proc/sync_motion_mode()
	if(connected_area)
		for(var/obj/machinery/light_switch/L in connected_area)
			if(L.smart_mode != smart_mode)
				L.smart_mode = smart_mode

/obj/machinery/light_switch/proc/motion_detect(area/myarea, atom/movable/detected)
	// Furniture - doesn't care.
	if(!isliving(detected))
		return

	if(!(smart_mode in smart_mode_list))
		smart_mode = initial(smart_mode)

	// Regular manual lightswitch.
	if(smart_mode == SMART_MODE_MANUAL)
		return

	// smart_mode 1 only turns off light. Turn on it manualy.
	if(smart_mode == SMART_MODE_ONLY_OFF && !on)
		return

	var/anyone_else = FALSE
	if(locate(detected) in connected_area)
		anyone_else = TRUE

	// We won't turn lights off if there other living mobs presented.
	if(!(on ^ anyone_else))
		return

	if(on)
		addtimer(CALLBACK(src, .proc/set_state, !on), 3 SECONDS, (TIMER_UNIQUE | TIMER_OVERRIDE))
	else
		set_state(!on)

/obj/machinery/light_switch/Initialize()
	. = ..()
	if(connected_area)
		events_repository.register(/decl/observ/entered, connected_area, src, /obj/machinery/light_switch/proc/motion_detect)
		events_repository.register(/decl/observ/exited, connected_area, src, /obj/machinery/light_switch/proc/motion_detect)

/obj/machinery/light_switch/Destroy()
	if(connected_area)
		events_repository.unregister(/decl/observ/entered, connected_area, src, /obj/machinery/light_switch/proc/motion_detect)
		events_repository.unregister(/decl/observ/exited, connected_area, src, /obj/machinery/light_switch/proc/motion_detect)
	. = ..()

/obj/machinery/light_switch/AltClick(mob/user)
	if(!CanPhysicallyInteract(usr) || !Adjacent(usr, src))
		return

	var/selection = input(usr, "Set smart mode motion detectors mode.", "Mode" , smart_mode) as null|anything in smart_mode_list
	
	if(!CanPhysicallyInteract(usr) || !Adjacent(usr, src) || isnull(selection))
		return

	smart_mode = selection
	sync_motion_mode()

#undef SMART_MODE_FULL_AUTO
#undef SMART_MODE_ONLY_OFF
#undef SMART_MODE_MANUAL
