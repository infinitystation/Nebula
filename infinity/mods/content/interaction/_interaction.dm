//Macro & helpers

#define INTERACT_DELAY 2

#define B(X) "<b>[X]</b>"             //Bold text macro

#define INT_VAG  BITFLAG(0)
#define INT_PEN  BITFLAG(1)
#define INT_MOU  BITFLAG(2)
#define INT_ASS  BITFLAG(3)
#define INT_HAN  BITFLAG(4)
#define INT_CONS BITFLAG(5)
#define INT_CUFF BITFLAG(6)
#define INT_BREA BITFLAG(7)
#define INT_SELF BITFLAG(8)

var/list/interactions = list()

/decl/modpack/interaction
	name = "Interaction System"

/decl/modpack/interaction/post_initialize()
	. = ..()
	for(var/interaction_type in subtypesof(/datum/interaction))
		var/datum/interaction/I = interaction_type
		if(initial(I.id) == null)
			continue
		var/datum/interaction/N = new interaction_type
		global.interactions[N.id] = N
