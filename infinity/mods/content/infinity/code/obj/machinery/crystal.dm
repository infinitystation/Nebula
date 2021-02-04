//Safe supermatter

/obj/machinery/power/supermatter/energy
	name = "energy crystal"
	desc = "A strangely translucent and iridescent crystal."

	icon_state      = "darkmatter_shard"
	base_icon_state = "darkmatter_shard"

	color                      = COLOR_YELLOW
	decay_factor               = 20000
	critical_temperature       = 90000

	product_release_modifier   = -2
	oxygen_release_modifier    = -2
	radiation_release_modifier = 0
	config_hallucination_power = 0

/obj/machinery/power/supermatter/energy/Initialize()
	light_color = color
	. = ..()

/obj/machinery/power/supermatter/energy/examine(var/mob/user)
	. = ..()
	to_chat(user, SPAN_NOTICE("It is [(thermal_release_modifier > 0) ? FONT_COLORED(COLOR_RED, "heating") : FONT_COLORED(COLOR_CYAN, "cooling")] type."))

/obj/machinery/power/supermatter/energy/attack_hand(var/mob/user)
	visible_message(SPAN_NOTICE("[user] gently taps \the [src]."))

/obj/machinery/power/supermatter/energy/attackby(var/obj/item/W, var/mob/living/user)
	visible_message(SPAN_NOTICE("[user] gently taps \the [src] with [W]."))

/obj/machinery/power/supermatter/energy/Bumped()
	return

//hot-cold

/obj/machinery/power/supermatter/energy/hot
	color                    = COLOR_ORANGE
	thermal_release_modifier =  8000

/obj/machinery/power/supermatter/energy/cold
	color                    = COLOR_CYAN
	thermal_release_modifier = -8000
