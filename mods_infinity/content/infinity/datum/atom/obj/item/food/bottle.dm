/obj/item/chems/drinks/bottle/tarkhun
	name = "bottled tarkhun"
	desc = "Pure tarkhun, wow!"
	icon_state = "waterbottle"
	center_of_mass = @"{'x':15,'y':8}"
	color = "#006600"

/obj/item/chems/drinks/bottle/tarkhun/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/drink/tarkhun, 100)

/obj/item/chems/drinks/bottle/tarkhun/attack_self(mob/user)
	playsound(loc,'sound/effects/bonebreak1.ogg', rand(10,50), 1)
	atom_flags ^= ATOM_FLAG_OPEN_CONTAINER
	var/open = (atom_flags & ATOM_FLAG_OPEN_CONTAINER) ? "open" : "close"
	to_chat(user, SPAN_NOTICE("You [open] \the [src]!"))
