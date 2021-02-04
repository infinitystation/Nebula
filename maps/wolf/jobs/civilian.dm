/datum/job/wolf/civilian/bosun
	title = "Bosun"
	department_refs = list(DEPT_COMMAND,DEPT_SUPPLY)
	head_position = TRUE
	req_admin_notify = TRUE
	alt_titles = list("Quartermaster")
	supervisors = "the Captain and the First Officer"
	access = list(
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_manufacturing,
		access_mining,
		access_mining_office,
		access_mailsorting,
		access_maint_tunnels,
		access_external_airlocks,
		access_eva,
		access_qm,
		access_bridge,
		access_heads,
		access_security,
		access_RC_announce,
		access_keycard_auth,
		)

	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/wolf/bosun
	allowed_ranks = list(/datum/mil_rank/exo/e6, /datum/mil_rank/exo/e7)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs)

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_FINANCE = SKILL_ADEPT,
		SKILL_EVA = SKILL_BASIC,
		SKILL_CONSTRUCTION = SKILL_BASIC,
		SKILL_ELECTRICAL = SKILL_BASIC,
		SKILL_COOKING = SKILL_BASIC,
		SKILL_BOTANY = SKILL_BASIC,
	)
	max_skill = list(
		SKILL_EVA = SKILL_EXPERT,
		SKILL_FINANCE = SKILL_MAX,
		SKILL_MECH = SKILL_ADEPT,
		SKILL_BOTANY = SKILL_MAX,
		SKILL_COOKING = SKILL_MAX,
		SKILL_CONSTRUCTION = SKILL_EXPERT,
		SKILL_ELECTRICAL = SKILL_EXPERT,
		SKILL_HAULING = SKILL_MAX
	)
	skill_points = 20

/datum/job/wolf/civilian/bosun/get_description_blurb()
	var/desc = {"You are the Bosun aboard the USN Odyssey. Your job is to oversee all the civilian functions of the ship, and ensure that supplies are evenly, and quickly distributed.
	You also oversee the bar, kitchen, and botany. It is your job to make sure these departments are functioning appropriately and have the materials they need to keep the crew fat and happy.
	Additionally, you oversee the Deck Hands who run cargo, and give the Salvage Teams their missions. You are finger keeping the pulse on the ship's crew - and should advise the Captain about
	their morale whenever you see it fit."}
	return desc

/datum/job/wolf/civilian/deck_hand
	title = "Deck Hand"
	alt_titles = list("Deck Technician")
	access = list(
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_manufacturing,
		access_mining,
		access_mining_office,
		access_mailsorting,
		access_maint_tunnels,
		access_external_airlocks,
		access_eva
		)
	total_positions = 2
	spawn_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/wolf/cargo/deck_hand
	allowed_ranks = list(/datum/mil_rank/exo/e3, /datum/mil_rank/exo/e4, /datum/mil_rank/civ/contractor, /datum/mil_rank/civ/civ)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs, /datum/mil_branch/civilian)

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_FINANCE = SKILL_BASIC,
		SKILL_EVA = SKILL_BASIC,
		SKILL_CONSTRUCTION = SKILL_BASIC,
		SKILL_ELECTRICAL = SKILL_BASIC,
		SKILL_COOKING = SKILL_BASIC,
		SKILL_BOTANY = SKILL_BASIC,
	)
	max_skill = list(
		SKILL_EVA = SKILL_EXPERT,
		SKILL_FINANCE = SKILL_EXPERT,
		SKILL_MECH = SKILL_ADEPT,
		SKILL_BOTANY = SKILL_MAX,
		SKILL_COOKING = SKILL_MAX,
		SKILL_CONSTRUCTION = SKILL_ADEPT,
		SKILL_ELECTRICAL = SKILL_ADEPT,
		SKILL_HAULING = SKILL_MAX
	)
	skill_points = 16

/datum/job/wolf/civilian/deck_hand/get_description_blurb()
	var/desc = {"You are a Deck Hand aboard the USN Odyssey. Your job is to organize and manage the mess that is the Cargo bay, storing materials and running the commissary to sell goods to the crew
	. Keep in mind that the goods in the comissary aren't free for you. You also deliver supplies across the ship to any department that asks for them. You may be called on to assist on any expeditions,
	or to work on a fabrication order for a department like Engineering."}
	return desc

/datum/job/wolf/civilian/salvage_tech
	title = "Salvage Technician"
	alt_titles = list("Drill Technician", "Prospector")
	access = list(
		access_mailsorting,
		access_cargo,
		access_cargo_bot,
		access_manufacturing,
		access_mining,
		access_mining_office,
		access_mailsorting,
		access_maint_tunnels,
		access_external_airlocks,
		access_eva
		)
	total_positions = 2
	spawn_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/wolf/cargo/deck_hand
	allowed_ranks = list(/datum/mil_rank/civ/contractor, /datum/mil_rank/civ/civ)
	allowed_branches = list(/datum/mil_branch/civilian)

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_EVA = SKILL_ADEPT,
		SKILL_CONSTRUCTION = SKILL_BASIC,
		SKILL_ELECTRICAL = SKILL_BASIC,
		SKILL_PILOT = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_EVA = SKILL_EXPERT,
		SKILL_MECH = SKILL_ADEPT,
		SKILL_CONSTRUCTION = SKILL_EXPERT,
		SKILL_ELECTRICAL = SKILL_EXPERT,
		SKILL_HAULING = SKILL_MAX,
		SKILL_PILOT = SKILL_EXPERT
	)
	skill_points = 16

/datum/job/wolf/civilian/salvage_tech/get_description_blurb()
	var/desc = {"You are a Salvage Technician aboard the USN Odyssey. Exoplanetary Affairs expects the ship's main source of materials to be from valuable materials and technologies recovered from ships the Odyssey
	engages in combat and hopefully defeats - or things just looted from wrecks. Your job is to go into these potentially hostile enviroments - with or without protection - and acquire these resources.
	As the Odyssey's resources are limited, if it sustains any damage, the responsibility for repair materials lies on your shoulders. You may occasionally be called on to do some mining."}
	return desc

/datum/job/wolf/civilian/chef
	title = "Mess Cook"
	alt_titles = list("Chef")
	selection_color = "#8bc95b"
	access = list(
		access_hydroponics,
		access_kitchen,
		access_bar,
		access_maint_tunnels
		)
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/wolf/chef
	allowed_ranks = list(/datum/mil_rank/exo/e3, /datum/mil_rank/exo/e4, /datum/mil_rank/civ/contractor, /datum/mil_rank/civ/civ)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs, /datum/mil_branch/civilian)

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_COOKING = SKILL_ADEPT,
		SKILL_BOTANY = SKILL_BASIC,
		SKILL_HAULING = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_COOKING = SKILL_MAX,
		SKILL_HAULING = SKILL_MAX,
		SKILL_BOTANY = SKILL_EXPERT
	)
	skill_points = 16

/datum/job/wolf/civilian/chef/get_description_blurb()
	var/desc = {"You are the Mess Cook aboard the USN Odyssey. Your job is to keep the crew fat and happy by providing at least somewhat servicable food to them. You're not expected to be the best
	at your job, but you are expected to be able to feed the crew without making anyone sick or killing them. Anticipate working closely with the Bosun and Botany to see to the needs of the crew,
	and stare moodily across the mess hall at the bartender who seems to be getting all the attention - and tips."}
	return desc

/datum/job/wolf/civilian/bartender
	title = "Bartender"
	selection_color = "#8bc95b"
	access = list(
		access_hydroponics,
		access_kitchen,
		access_bar,
		access_maint_tunnels
		)
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/wolf/bartender
	allowed_ranks = list(/datum/mil_rank/exo/e3, /datum/mil_rank/exo/e4, /datum/mil_rank/civ/contractor, /datum/mil_rank/civ/civ)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs, /datum/mil_branch/civilian)

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_COOKING = SKILL_BASIC,
		SKILL_BOTANY = SKILL_BASIC,
		SKILL_HAULING = SKILL_ADEPT,
		SKILL_CHEMISTRY = SKILL_BASIC
	)
	max_skill = list(
		SKILL_COOKING = SKILL_EXPERT,
		SKILL_BOTANY = SKILL_EXPERT,
		SKILL_HAULING = SKILL_MAX,
		SKILL_CHEMISTRY = SKILL_EXPERT
	)
	skill_points = 16

/datum/job/wolf/civilian/bartender/get_description_blurb()
	var/desc = {"You are the Bartender aboard the USN Odyssey. Your job is to keep the crew's Alcohol Blood Level at a place where they're nice and happy, and willing to forget the fact that
	none of them have proper bedrooms and the meals aren't quite up to par with what you'd find even on the worst space stations. You also need to refill the bar peanuts, now and again. Do they even exist?
	Regardless of the existence of bar peanuts, you're to serve drinks to the crew to keep them happy, and be the faceless bartender they can vent their woes too when it comes down to that."}
	return desc

/datum/job/wolf/civilian/botanist
	title = "Botanist"
	selection_color = "#8bc95b"
	access = list(
		access_hydroponics,
		access_kitchen,
		access_bar,
		access_maint_tunnels
		)
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/wolf/botanist
	allowed_ranks = list(/datum/mil_rank/exo/e3, /datum/mil_rank/exo/e4, /datum/mil_rank/civ/contractor, /datum/mil_rank/civ/civ)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs, /datum/mil_branch/civilian)

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_BOTANY = SKILL_ADEPT,
		SKILL_HAULING = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_HAULING = SKILL_MAX,
		SKILL_BOTANY = SKILL_MAX
	)
	skill_points = 16

/datum/job/wolf/civilian/botanist/get_description_blurb()
	var/desc = {"You are the Botanist aboard the USN Odyssey. Your job is to make sure the crew has plenty of fresh produce to keep them happy and healthy. Space scurvy would be pretty bad, wouldn't it?
	Expect to work with the chef and bartender routinely to attend to the needs of the crew, and deal with special requests from the Bosun or First Officer for anything the heads of staff might want."}
	return desc

/datum/job/wolf/civilian/janitor
	title = "Janitor"
	selection_color = "#8bc95b"
	access = list(
		access_maint_tunnels,
		access_janitor
		)

	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/wolf/janitor
	allowed_ranks = list(/datum/mil_rank/exo/e3, /datum/mil_rank/exo/e4, /datum/mil_rank/civ/contractor, /datum/mil_rank/civ/civ)
	allowed_branches = list(/datum/mil_branch/exoplanetary_affairs, /datum/mil_branch/civilian)

	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_EVA = SKILL_ADEPT,
		SKILL_HAULING = SKILL_ADEPT,
		SKILL_CONSTRUCTION = SKILL_BASIC,
		SKILL_ELECTRICAL = SKILL_BASIC
	)
	max_skill = list(
		SKILL_HAULING = SKILL_MAX,
		SKILL_CONSTRUCTION = SKILL_EXPERT,
		SKILL_ELECTRICAL = SKILL_EXPERT,
	)
	skill_points = 16

/datum/job/wolf/civilian/janitor/get_description_blurb()
	var/desc = {"You are the Janitor aboard the USN Odyssey. A simple job, but a never the less vital one. Your job is to keep the ship clean during routine life - replace bulbs, and preform general maintenance
	Anything Engineering is too busy to handle, you should be doing. In the aftermath of battle, of course, your services are vital for keeping areas like Medbay clear of blood and reducing the
	risk of infection."}
	return desc
