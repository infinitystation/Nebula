/obj/machinery/door/airlock/autoname/odyssey/

/obj/machinery/door/airlock/autoname/odyssey/mining
	door_color = COLOR_PALE_ORANGE
	stripe_color = COLOR_BEASTY_BROWN

/obj/machinery/door/airlock/autoname/odyssey/command
	door_color = COLOR_COMMAND_BLUE

/obj/machinery/door/airlock/autoname/odyssey/security
	door_color = COLOR_NT_RED

/obj/machinery/door/airlock/autoname/odyssey/security/research
	door_color = COLOR_WHITE
	stripe_color = COLOR_NT_RED

/obj/machinery/door/airlock/autoname/odyssey/medical
	door_color = COLOR_WHITE
	stripe_color = COLOR_DEEP_SKY_BLUE

/obj/machinery/door/airlock/autoname/odyssey/virology
	door_color = COLOR_WHITE
	stripe_color = COLOR_GREEN

/obj/machinery/door/airlock/autoname/odyssey/atmos
	door_color = COLOR_AMBER
	stripe_color = COLOR_CYAN

/obj/machinery/door/airlock/autoname/odyssey/research
	door_color = COLOR_WHITE
	stripe_color = COLOR_BOTTLE_GREEN

/obj/machinery/door/airlock/autoname/odyssey/science
	door_color = COLOR_WHITE
	stripe_color = COLOR_VIOLET

/obj/machinery/door/airlock/autoname/odyssey/sol
	door_color = COLOR_BLUE_GRAY

/obj/machinery/door/airlock/autoname/odyssey/civilian
	stripe_color = COLOR_CIVIE_GREEN

/obj/machinery/door/airlock/autoname/odyssey/chaplain
	stripe_color = COLOR_GRAY20

/obj/machinery/door/airlock/autoname/odyssey/engineering
	door_color = COLOR_AMBER

/obj/machinery/door/airlock/autoname/odyssey/maintenance
	stripe_color = COLOR_AMBER

// Glass airlock presets

/obj/machinery/door/airlock/autoname/odyssey/glass
	name = "Glass Airlock"
	icon_state = "preview_glass"
	hitsound = 'sound/effects/Glasshit.ogg'
	maxhealth = 300
	explosion_resistance = 5
	opacity = FALSE
	glass = TRUE

/obj/machinery/door/airlock/autoname/odyssey/glass/command
	door_color = COLOR_COMMAND_BLUE
	stripe_color = COLOR_SKY_BLUE

/obj/machinery/door/airlock/autoname/odyssey/glass/security
	door_color = COLOR_NT_RED
	stripe_color = COLOR_ORANGE

/obj/machinery/door/airlock/autoname/odyssey/glass/engineering
	door_color = COLOR_AMBER
	stripe_color = COLOR_RED

/obj/machinery/door/airlock/autoname/odyssey/glass/medical
	door_color = COLOR_WHITE
	stripe_color = COLOR_DEEP_SKY_BLUE

/obj/machinery/door/airlock/autoname/odyssey/glass/mining
	door_color = COLOR_PALE_ORANGE
	stripe_color = COLOR_BEASTY_BROWN

/obj/machinery/door/airlock/autoname/odyssey/glass/atmos
	door_color = COLOR_AMBER
	stripe_color = COLOR_CYAN

/obj/machinery/door/airlock/autoname/odyssey/glass/research
	door_color = COLOR_WHITE
	stripe_color = COLOR_RESEARCH

/obj/machinery/door/airlock/autoname/odyssey/glass/science
	door_color = COLOR_WHITE
	stripe_color = COLOR_VIOLET

/obj/machinery/door/airlock/autoname/odyssey/glass/sol
	door_color = COLOR_BLUE_GRAY
	stripe_color = COLOR_AMBER

/obj/machinery/door/airlock/autoname/odyssey/glass/freezer
	door_color = COLOR_WHITE

/obj/machinery/door/airlock/autoname/odyssey/glass/civilian
	stripe_color = COLOR_CIVIE_GREEN

/obj/machinery/door/airlock/autoname/odyssey/glass/mining
	door_color = COLOR_PALE_ORANGE
	stripe_color = COLOR_BEASTY_BROWN

/obj/machinery/door/airlock/autoname/odyssey/glass/engineering
	door_color = COLOR_AMBER

/obj/machinery/door/airlock/autoname/odyssey/glass/hydroponic
	door_color = COLOR_CIVIE_GREEN

/obj/machinery/door/airlock/hatch/autoname/odyssey

/obj/machinery/door/airlock/hatch/autoname/odyssey/Initialize()
	. = ..()
	var/area/A = get_area(src)
	SetName("[A.name]")

/obj/machinery/door/airlock/hatch/autoname/odyssey/general
	stripe_color = COLOR_CIVIE_GREEN

/obj/machinery/door/airlock/hatch/autoname/odyssey/maintenance
	stripe_color = COLOR_AMBER

/obj/machinery/door/airlock/hatch/autoname/odyssey/command
	stripe_color = COLOR_COMMAND_BLUE

/obj/machinery/door/airlock/hatch/autoname/odyssey/engineering
	stripe_color = COLOR_AMBER

/obj/machinery/door/airlock/hatch/autoname/odyssey/science
	stripe_color = COLOR_PURPLE