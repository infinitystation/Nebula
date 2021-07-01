#define SPECIES_DWARF "Dwarf"

/decl/modpack/dwarfs
	name = "Dwarfs"
	desc = "Dwarfs modpack! Includes the human subtype species. For maximum drarfism use the <b>scaling modpack</b>."
	author = "quardbreak."

/mob/living/carbon/human/dwarf/Initialize(mapload)
	..(mapload, SPECIES_DWARF)
