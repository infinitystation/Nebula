// smart mode feature for light switches. Ported from Infinity Station.
// Feature by Archemagus (aka Laxesh).

#define SMART_MODE_MANUAL 0
#define SMART_MODE_ONLY_OFF 1
#define SMART_MODE_FULL_AUTO 2

/obj/machinery/light_switch
	var/smart_mode = SMART_MODE_ONLY_OFF

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
	// Furniture - doesn't care
	if(!isliving(detected))
		return

	// Regular manual lightswitch
	if(smart_mode == SMART_MODE_MANUAL)
		return

	// smart_mode 1 only turns off light. Turn on it manualy
	if(smart_mode == SMART_MODE_ONLY_OFF && !on)
		return

	var/anyone_else = FALSE
	if(locate(detected) in connected_area)
		anyone_else = TRUE

	// We won't turn lights off if there other humans presented
	if(!(on ^ anyone_else))
		return

	set_state(!on)
	visible_message("The light switch was turned [on ? "on": "off"] after \the [detected] [on ? "entered": "leaved from"] the room.")

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

/obj/machinery/light_switch/verb/configure_motion_detector()
	set name = "Toggle motion sensor"
	set desc = "Adjust light switch's motion sensors"
	set category = "Object"
	set src in view(1)

	if(!CanPhysicallyInteract(usr))
		return

	var/selection = input(usr, "Set smart_mode motion detectors mode.", "Mode" , "") as null|anything in list("Manual", "Only turn off", "Full auto")
	if(!CanPhysicallyInteract(usr) || isnull(selection))
		return

	switch(selection)
		if("Manual")
			smart_mode = SMART_MODE_MANUAL
		if("Only turn off")
			smart_mode = SMART_MODE_ONLY_OFF
		if("Full auto")
			smart_mode = SMART_MODE_FULL_AUTO

	sync_motion_mode()

#undef SMART_MODE_FULL_AUTO
#undef SMART_MODE_ONLY_OFF
#undef SMART_MODE_MANUAL
