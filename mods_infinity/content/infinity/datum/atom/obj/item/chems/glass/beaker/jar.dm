/obj/item/chems/glass/beaker/jar
	name = "jar"
	desc = "A jar."
	icon = 'mods_infinity/content/infinity/datum/atom/obj/item/chems/glass/beaker/jar.dmi'
	atom_flags = 0

/obj/item/chems/glass/beaker/jar/filled
	name = "jarate"
	desc = "\"Wreak havoc on your opponent's mental state, psychological well-being and trust in the inherent goodness of his fellow man!\""
	applies_material_name = FALSE

/obj/item/chems/glass/beaker/jar/filled/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/water/urine, 60)
	update_icon()
