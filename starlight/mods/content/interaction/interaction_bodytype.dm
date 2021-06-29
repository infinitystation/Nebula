/decl/bodytype
	/// A special flags for a interaction checks.
	var/interact_flags

/decl/bodytype/human
	interact_flags = INTERACT_ASS | INTERACT_VAGINAL | INTERACT_BREAST

/decl/bodytype/human/masculine
	interact_flags = INTERACT_ASS | INTERACT_PENIS
