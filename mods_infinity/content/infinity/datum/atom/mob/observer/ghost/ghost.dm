#define GHOST_ORBIT_CIRCLE "circle"
#define GHOST_ORBIT_TRIANGLE "triangle"
#define GHOST_ORBIT_HEXAGON "hexagon"
#define GHOST_ORBIT_SQUARE "square"
#define GHOST_ORBIT_PENTAGON "pentagon"

/datum/client_preference/ghost_orbit_type
	description = "Ghost Orbit Type"
	key = "GHOST_ORBIT_TYPE"
	options = list(
		GHOST_ORBIT_CIRCLE,
		GHOST_ORBIT_TRIANGLE,
		GHOST_ORBIT_HEXAGON,
		GHOST_ORBIT_SQUARE,
		GHOST_ORBIT_PENTAGON
	)

/mob/observer/ghost/Initialize()
	. = ..()
	animate(src, pixel_y = 2, time = 10, loop = -1)

/mob/observer/ghost/ManualFollow(atom/movable/target)
	..()
	var/icon/I = icon(target.icon, target.icon_state, target.dir)
	var/orbit_size = (I.Width() + I.Height()) * 0.5
	orbit_size -= (orbit_size / WORLD_ICON_SIZE) * (WORLD_ICON_SIZE * 0.25)

	var/rotation_segments
	switch(get_preference_value(/datum/client_preference/ghost_orbit_type))
		if(GHOST_ORBIT_CIRCLE)
			rotation_segments = 36
		if(GHOST_ORBIT_TRIANGLE)
			rotation_segments = 3
		if(GHOST_ORBIT_SQUARE)
			rotation_segments = 4
		if(GHOST_ORBIT_PENTAGON)
			rotation_segments = 5
		if(GHOST_ORBIT_HEXAGON)
			rotation_segments = 6

	orbit(target, orbit_size, TRUE, 20, rotation_segments)

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

// none of these would be probably
// used outside this file anyway

#undef GHOST_ORBIT_CIRCLE
#undef GHOST_ORBIT_TRIANGLE
#undef GHOST_ORBIT_HEXAGON
#undef GHOST_ORBIT_SQUARE
#undef GHOST_ORBIT_PENTAGON
