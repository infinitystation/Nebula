#define SPECIES_ANDROID "Android"

/decl/modpack/android
	name = "Android"

/mob/living/carbon/human/android/Initialize(mapload)
	..(mapload, SPECIES_ANDROID)
