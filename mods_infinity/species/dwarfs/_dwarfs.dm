#define SPECIES_DWARF "Dwarf"

/decl/modpack/booster
	name = "Dwarfs"
	desc = "Dwarfs modpack! Includes the human subtype species. For maximum drarfism use <b>scaling modpack</b>."
	author = "quardbreak."

/mob/living/carbon/human/dwarf/Initialize(mapload)
	..(mapload, SPECIES_DWARF)
