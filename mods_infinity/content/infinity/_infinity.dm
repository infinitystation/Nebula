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
		"Resomi",
		"Utility Frame",
		"Vat-Grown Human"
	)
