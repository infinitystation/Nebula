/obj/machinery/power/supermatter
	explosion_power = 20

//Safe supermatter
/obj/machinery/power/supermatter/energy
	name = "energy crystal"
	desc = "A strangely translucent and iridescent crystal."

	icon_state      = "supermatter_shard"

	critical_temperature       = 8000
	decay_factor = 300

	product_release_modifier   = -2
	oxygen_release_modifier    = -2
	radiation_release_modifier = 0
	config_hallucination_power = 0

/obj/machinery/power/supermatter/energy/Initialize()
	light_color = color
	. = ..()

/obj/machinery/power/supermatter/energy/attack_hand(var/mob/user)
	visible_message(SPAN_NOTICE("\The [user] gently taps \the [src]."))

/obj/machinery/power/supermatter/energy/attackby(var/obj/item/W, var/mob/living/user)
	visible_message(SPAN_NOTICE("\The [user] gently taps \the [src] with \the [W]."))

/obj/machinery/power/supermatter/energy/Bumped()
	return

//hot-cold

/obj/machinery/power/supermatter/energy/hot
	color                    = COLOR_ORANGE
	thermal_release_modifier =  15000

/obj/machinery/power/supermatter/energy/cold
	color                    = COLOR_CYAN
	thermal_release_modifier = -15000
