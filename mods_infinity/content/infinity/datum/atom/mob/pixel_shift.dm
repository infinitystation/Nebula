/mob/var/is_shifted = FALSE

/mob/living/Move()
	. = ..()

	if(is_shifted && !buckled)
		is_shifted = FALSE
		pixel_x = default_pixel_x
		pixel_y = default_pixel_y

/mob/proc/can_shift()
	return !(incapacitated() || buckled || LAZYLEN(grabbed_by))

#define SHIFT_MAX 8

/mob/proc/shift(dir)
	if(!canface() || !can_shift())
		return FALSE

	switch(dir)
		if(NORTH)
			if(pixel_y <= SHIFT_MAX)
				pixel_y++
		if(EAST)
			if(pixel_x <= SHIFT_MAX)
				pixel_x++
		if(SOUTH)
			if(pixel_y >= -SHIFT_MAX)
				pixel_y--
		if(WEST)
			if(pixel_x >= -SHIFT_MAX)
				pixel_x--
		else
			CRASH("Invalid argument supplied!")

	is_shifted = TRUE
	UPDATE_OO_IF_PRESENT

#undef SHIFT_MAX

/mob/verb/shiftnorth()
	set hidden = TRUE
	shift(NORTH)

/mob/verb/shiftsouth()
	set hidden = TRUE
	shift(SOUTH)

/mob/verb/shiftwest()
	set hidden = TRUE
	shift(WEST)

/mob/verb/shifteast()
	set hidden = TRUE
	shift(EAST)