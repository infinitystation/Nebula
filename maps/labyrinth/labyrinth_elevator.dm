//Elevator

/obj/turbolift_map_holder/labyrinth
	depth = 3
	lift_size_x = 4
	lift_size_y = 3
	areas_to_use = list(
		/area/turbolift/labyrinth/under,
		/area/turbolift/labyrinth/surface,
		/area/turbolift/labyrinth/tower
	)

/area/turbolift/labyrinth
	icon_state = "shuttle"
	dynamic_lighting = TRUE

/area/turbolift/labyrinth/tower
	name = "Tower Access"
	base_turf = /turf/simulated/open

/area/turbolift/labyrinth/surface
	name = "Surface Access"
	base_turf = /turf/simulated/open

/area/turbolift/labyrinth/under
	name = "Underground Access"
	base_turf = /turf/simulated/floor/plating
