//welp, yeah. might think of better way to do this later
//i tried to make a fancy macro but failed ungh...

/datum/sprite_accessory/hair/New()
	..()
	if((species_allowed.len == 1) && (SPECIES_HUMAN in species_allowed))
		species_allowed += SPECIES_ANDROID

/datum/sprite_accessory/facial_hair/New()
	..()
	if((species_allowed.len == 1) && (SPECIES_HUMAN in species_allowed))
		species_allowed += SPECIES_ANDROID

/datum/sprite_accessory/marking/New()
	..()
	if((species_allowed.len == 1) && (SPECIES_HUMAN in species_allowed))
		species_allowed += SPECIES_ANDROID