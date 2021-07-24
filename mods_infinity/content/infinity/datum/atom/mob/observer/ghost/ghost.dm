/mob/observer/ghost/Initialize()
	. = ..()
	animate(src, pixel_y = 2, time = 10, loop = -1)

/mob/observer/ghost/ManualFollow(atom/movable/target)
	..()
	var/icon/I = icon(target.icon, target.icon_state, target.dir)
	var/orbit_size = (I.Width() + I.Height()) * 0.5
	orbit_size -= (orbit_size / WORLD_ICON_SIZE) * (WORLD_ICON_SIZE * 0.25)
	orbit(target, orbit_size, TRUE, 20)

/mob/observer/ghost/stop_orbit()
	. = ..()
	//restart our floating animation after orbit is done.
	pixel_y = 0
	pixel_x = 0
	transform = null
	animate(src, pixel_y = 2, time = 10, loop = -1)

/mob/observer/ghost/stop_following()
	if(following)
		stop_orbit()
	..()
