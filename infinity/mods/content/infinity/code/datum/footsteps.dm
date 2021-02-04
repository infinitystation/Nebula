/decl/footsteps/tiles
	footstep_sounds = list(
		'infinity/mods/content/infinity/sound/effects/footstep/floor1.ogg',
		'infinity/mods/content/infinity/sound/effects/footstep/floor2.ogg',
		'infinity/mods/content/infinity/sound/effects/footstep/floor3.ogg',
		'infinity/mods/content/infinity/sound/effects/footstep/floor4.ogg')

/decl/footsteps/gear
	footstep_sounds = list(
		'infinity/mods/content/infinity/sound/effects/footstep/armor/gear1.ogg',
		'infinity/mods/content/infinity/sound/effects/footstep/armor/gear2.ogg',
		'infinity/mods/content/infinity/sound/effects/footstep/armor/gear3.ogg',
		'infinity/mods/content/infinity/sound/effects/footstep/armor/gear4.ogg')

/*
/obj/item/clothing/shoes/jackboots/var/footstep = 1
/obj/item/clothing/shoes/jackboots/handle_movement(turf/walking, running)
	if(running)
		if(footstep >= 2)
			footstep = 0
			playsound(src, get_footstep(/decl/footsteps/gear, ismob(loc) ? loc : null), 50, 1)
		else
			footstep++
	else
		playsound(src, get_footstep(/decl/footsteps/gear, ismob(loc) ? loc : null), 20, 1)
*/
