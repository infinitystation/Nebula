/decl/modpack/infinity
	name = "Infinity Station Content Pack"
	desc = "A Infinity Station Project modpack with edits specially for Infinity Station."
	author = "quardbreak and the Infinity Station Project."

/decl/modpack/infinity/initialize()
	/// Update this on map change/modpack addition/remove.
	/// I did it non-define because some species rely on modpacks.
	SSmodpacks.default_submap_whitelisted_species |= list(
		"Human",
		"Dwarf",
		"Booster",
		"Android",
		"Lizard",
		"Tajara",
		"Utility Frame",
		"Vat-Grown Human"
	)

	// This needed because we can't override globals on compile time.
	global.base_miss_chance = list(
		BP_HEAD = 25,
		BP_CHEST = 10,
		BP_GROIN = 20,
		BP_L_LEG = 30,
		BP_R_LEG = 30,
		BP_L_ARM = 25,
		BP_R_ARM = 25,
		BP_L_HAND = 80,
		BP_R_HAND = 80,
		BP_L_FOOT = 80,
		BP_R_FOOT = 80,
	)
