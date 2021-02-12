#define SPECIES_RESOMI "Resomi"
#define LANGUAGE_RESOMI "Schechi"
#define BODYTYPE_RESOMI "resomi body"

#define CULTURE_RESOMI_EREMUS         "Eremus, Eremusianin"
#define CULTURE_RESOMI_ASRANDA        "Asranda, Randian"
#define CULTURE_RESOMI_REFUGEE        "Imperial refugee"
#define CULTURE_RESOMI_NEWGENERATION  "New generation"
#define CULTURE_RESOMI_LOSTCOLONYRICH "A native of a thriving lost colony"
#define CULTURE_RESOMI_LOSTCOLONYPOOR "A native of a impoverished lost colony"

#define HOME_SYSTEM_RESOMI_BIRDCAGE       "Birdcage (Colchis Habitat)"
#define HOME_SYSTEM_RESOMI_EREMUS         "Eremus"
#define HOME_SYSTEM_RESOMI_ASRANDA        "Asranda"
#define HOME_SYSTEM_RESOMI_SAVEEL         "Zer'een (Saveel)"
#define HOME_SYSTEM_RESOMI_LOST_COLONY    "Unknown independent colony"
#define HOME_SYSTEM_RESOMI_REFUGEE_COLONY "Unknown Independent Refugee Colony"
#define HOME_SYSTEM_RESOMI_HOMELESS       "None"

#define RELIGION_RESOMI_CHOSEN   "Faith of the Chosen"
#define RELIGION_RESOMI_EMPEROR  "Cult of the Emperor"
#define RELIGION_RESOMI_MOUNTAIN "Echos of the Mountain"
#define RELIGION_RESOMI_SKIES    "Lights of the Skies"

/decl/modpack/resomi
	name = "Resomi"

/mob/living/carbon/human/resomi/Initialize(mapload)
	..(mapload, SPECIES_RESOMI)
