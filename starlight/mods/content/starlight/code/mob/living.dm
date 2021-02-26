/mob/living/Initialize()
	. = ..()
	if(isSynthetic())
		overlay_fullscreen("synthetic_noise",    /obj/screen/fullscreen/noise,    null)
		overlay_fullscreen("synthetic_scanline", /obj/screen/fullscreen/scanline, null)

//This is called when the mob is thrown into a dense turf
/mob/living/turf_collision(turf/T, speed)
	. = ..()
	playsound(T, pick(list(
		'starlight/mods/content/starlight/sound/effects/gore/smash1.ogg',
		'starlight/mods/content/starlight/sound/effects/gore/smash2.ogg',
		'starlight/mods/content/starlight/sound/effects/gore/smash3.ogg',
		'starlight/mods/content/starlight/sound/effects/gore/trauma1.ogg')), 50, 1, 1)

	if(client) 
		shake_camera(src, 7, 1)

/mob/living/carbon/human/handle_fall_effect(landing)
	. = ..()
	playsound(landing, pick(list(
		'starlight/mods/content/starlight/sound/effects/gore/smash1.ogg',
		'starlight/mods/content/starlight/sound/effects/gore/smash2.ogg',
		'starlight/mods/content/starlight/sound/effects/gore/smash3.ogg',
		'starlight/mods/content/starlight/sound/effects/gore/trauma1.ogg')), 50, 1, -1)

	if(client) 
		shake_camera(src, 7, 0.5)
