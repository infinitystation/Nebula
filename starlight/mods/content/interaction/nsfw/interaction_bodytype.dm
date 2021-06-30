#define INTERACT_VAGINAL   BITFLAG(4)
#define INTERACT_PENIS     BITFLAG(5)
#define INTERACT_MOUTH     BITFLAG(6)
#define INTERACT_ASS       BITFLAG(7)

/decl/bodytype
	/// A special flags for a interaction checks.
	var/interact_flags

/decl/bodytype/human
	interact_flags = INTERACT_ASS | INTERACT_VAGINAL

/decl/bodytype/human/masculine
	interact_flags = INTERACT_ASS | INTERACT_PENIS

/decl/bodytype/lizard
	interact_flags = INTERACT_ASS | INTERACT_VAGINAL

/decl/bodytype/lizard/masculine
	interact_flags = INTERACT_ASS | INTERACT_PENIS
