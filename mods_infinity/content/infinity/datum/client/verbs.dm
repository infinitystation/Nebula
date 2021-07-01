/client/verb/stop_all_sounds()
	set name = "Stop All Sounds"
	set desc = "Stop all sounds that are currently playing."
	set category = "OOC"

	if(mob)
		sound_to(mob, sound(null))

/client/verb/fix_hotkeys()
	set name = "Fix hotkeys"
	set category = "OOC"

	if(!(isghost(mob) || isliving(mob)))
		return

	if(alert(usr, "Are you sure? You have to switch to the English keyboard layout first.\nWarning: This will close all open windows.", "Fix hotkeys", "Yes", "No") == "Yes")
		winset(src, null, "reset=true")
