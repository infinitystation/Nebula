/obj/machinery/door/airlock/hatch/labyrinth/Initialize()
	. = ..()

	var/obj/effect/floor_decal/industrial/hatch/yellow/decal
	if(!(locate(decal) in loc))
		decal = new(loc)

	var/obj/machinery/door/firedoor/fire
	if(!(locate(fire)  in loc))
		fire  = new(loc)

	var/area/A = get_area(src)
	SetName("hatch ([A.name])")

/obj/machinery/door/airlock/hatch/labyrinth/engineering
	stripe_color = COLOR_WARM_YELLOW

/obj/machinery/door/airlock/hatch/labyrinth/medical
	stripe_color = COLOR_DEEP_SKY_BLUE

/obj/machinery/door/airlock/hatch/labyrinth/command
	stripe_color = COLOR_COMMAND_BLUE

/obj/machinery/door/airlock/hatch/labyrinth/research
	stripe_color = COLOR_RESEARCH

/obj/machinery/door/airlock/hatch/labyrinth/security
	stripe_color = COLOR_NT_RED
