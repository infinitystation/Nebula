/decl/species/tajaran
	name = SPECIES_TAJARA
	name_plural = "Tajaran"

	description = "A small mammalian carnivore. If you are reading this, you are probably a Tajaran."
	hidden_from_codex = FALSE
	bodytype = BODYTYPE_HUMANOID
	sexybits_location = BP_GROIN

	min_age = 17
	max_age = 140

	spawn_flags = SPECIES_CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	icobase = 'infinity/mods/species/tajaran/icons/body.dmi'
	deform =  'infinity/mods/species/tajaran/icons/deformed_body.dmi'
	bandages_icon = 'icons/mob/bandage.dmi'
	preview_icon = 'infinity/mods/species/tajaran/icons/preview.dmi'
	tail_animation = 'infinity/mods/species/tajaran/icons/tail.dmi'
	tail = "tajtail"
	default_h_style = "Tajaran Ears"

	flesh_color = "#afa59e"
	base_color = "#333333"
	blood_color = "#862a51"
	organs_icon = 'infinity/mods/species/tajaran/icons/organs.dmi'
	reagent_tag = IS_TAJARA

	darksight_range = 7
	darksight_tint = DARKTINT_GOOD
	slowdown = -0.5
	brute_mod = 1.15
	burn_mod =  1.15
	flash_mod = 1.5
	hunger_factor = DEFAULT_HUNGER_FACTOR * 1.5

	gluttonous = GLUT_TINY
	health_hud_intensity = 1.75

	unarmed_attacks = list(
		/decl/natural_attack/stomp, 
		/decl/natural_attack/kick, 
		/decl/natural_attack/punch, 
		/decl/natural_attack/bite/sharp
	)

	move_trail = /obj/effect/decal/cleanable/blood/tracks/paw

	cold_level_1 = 200 //Default 260
	cold_level_2 = 140 //Default 200
	cold_level_3 = 80  //Default 120

	heat_level_1 = 330 //Default 360
	heat_level_2 = 380 //Default 400
	heat_level_3 = 800 //Default 1000

	heat_discomfort_level = 294
	cold_discomfort_level = 230

	heat_discomfort_strings = list(
		"Your fur prickles in the heat.",
		"You feel uncomfortably warm.",
		"Your overheated skin itches."
	)

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_TAJARAN
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_AHDOMAI
		),
		TAG_FACTION = list(
			FACTION_TAJARAN_HADII,
			FACTION_TAJARAN_KAYTAM,
			FACTION_TAJARAN_KAYTAM_KSD,
			FACTION_TAJARAN_SHISHI,
			FACTION_TAJARAN_JAR,
			FACTION_TAJARAN_NAZKIIN,
			FACTION_TAJARAN_OTHER,
			FACTION_OTHER
		)
	)

	default_emotes = list(
		/decl/emote/human/swish,
		/decl/emote/human/wag,
		/decl/emote/human/sway,
		/decl/emote/human/qwag,
		/decl/emote/human/fastsway,
		/decl/emote/human/swag,
		/decl/emote/human/stopsway,
		/decl/emote/audible/purr,
		/decl/emote/audible/purrlong
	)
