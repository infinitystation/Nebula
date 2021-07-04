/obj/random/keg
	name = "random keg"
	desc = "A beer keg."
	icon = 'icons/obj/objects.dmi'
	icon_state = "beertankTEMP"

/obj/random/keg/spawn_choices()
	return list(
		/obj/structure/reagent_dispensers/beerkeg,
		/obj/structure/reagent_dispensers/beerkeg/cognac,
		/obj/structure/reagent_dispensers/beerkeg/kvass,
		/obj/structure/reagent_dispensers/beerkeg/kompot,
		/obj/structure/reagent_dispensers/beerkeg/tarkhun
	)

/obj/structure/reagent_dispensers/beerkeg/cognac
	name = "cognac keg"
	desc = "A cognac keg."
	initial_reagent_types = list(/decl/material/liquid/ethanol/cognac = 1)

/obj/structure/reagent_dispensers/beerkeg/kvass
	name = "kvass keg"
	desc = "A kvass keg."
	initial_reagent_types = list(/decl/material/liquid/ethanol/kvass = 1)

/obj/structure/reagent_dispensers/beerkeg/kompot
	name = "kompot keg"
	desc = "A kompot keg."
	initial_reagent_types = list(/decl/material/liquid/drink/juice/kompot = 1)

/obj/structure/reagent_dispensers/beerkeg/tarkhun
	name = "tarkhun keg"
	desc = "A kompot keg."
	initial_reagent_types = list(/decl/material/liquid/drink/tarkhun = 1)
