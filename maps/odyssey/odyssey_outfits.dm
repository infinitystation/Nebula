#define ODYSSEY_OUTFIT_JOB_NAME(job_name) ("Odyssey - Job - " + job_name)

/decl/hierarchy/outfit/job/odyssey
	hierarchy_type = /decl/hierarchy/outfit/job/odyssey
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store_str

/decl/hierarchy/outfit/job/odyssey/assistant
	name = ODYSSEY_OUTFIT_JOB_NAME("Crewman")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/civilian
	shoes = /obj/item/clothing/shoes/color/black
	uniform = /obj/item/clothing/under/odyssey/grey

/decl/hierarchy/outfit/job/odyssey/stowaway
	name = ODYSSEY_OUTFIT_JOB_NAME("Stowaway")
	id_type = /obj/item/card/id/odyssey/civilian
	pda_type = null
	l_ear    = null
	l_pocket = /obj/item/wrench
	r_pocket = /obj/item/flashlight
	belt = /obj/item/crowbar/red

/decl/hierarchy/outfit/job/odyssey/stowaway/equip_id(var/mob/living/carbon/human/H, var/rank, var/assignment, var/equip_adjustments)
	var/obj/item/card/id/id = ..()
	if(!istype(id)) return
	id.assignment = "Crewman"
	id.registered_name = random_name(H.gender,H.species)

//COMMAND//

/decl/hierarchy/outfit/job/odyssey/captain
	name = ODYSSEY_OUTFIT_JOB_NAME("Captain")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/command/heads/captain
	shoes = /obj/item/clothing/shoes/jackboots/duty
	uniform = /obj/item/clothing/under/odyssey/blue
	pda_type = /obj/item/modular_computer/pda/heads/captain
	l_ear = /obj/item/radio/headset/heads/captain

/decl/hierarchy/outfit/job/odyssey/captain/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/chevrons/captain/chevrons = new()
		var/obj/item/clothing/accessory/dept_stripes/captain/stripes = new()
		if(uniform.can_attach_accessory(chevrons))
			uniform.attach_accessory(null, chevrons)
		if(uniform.can_attach_accessory(stripes))
			uniform.attach_accessory(null, stripes)
		else
			qdel(chevrons)
			qdel(stripes)


/decl/hierarchy/outfit/job/odyssey/first_officer
	name = ODYSSEY_OUTFIT_JOB_NAME("First Officer")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/command/heads
	shoes = /obj/item/clothing/shoes/jackboots/duty
	uniform = /obj/item/clothing/under/odyssey/blue
	pda_type = /obj/item/modular_computer/pda/heads/hop
	l_ear = /obj/item/radio/headset/heads/hop

/decl/hierarchy/outfit/job/odyssey/first_officer/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/chevrons/command/chevrons = new()
		var/obj/item/clothing/accessory/dept_stripes/command/stripes = new()
		if(uniform.can_attach_accessory(chevrons))
			uniform.attach_accessory(null, chevrons)
		if(uniform.can_attach_accessory(stripes))
			uniform.attach_accessory(null, stripes)
		else
			qdel(chevrons)
			qdel(stripes)

/decl/hierarchy/outfit/job/odyssey/CE
	name = ODYSSEY_OUTFIT_JOB_NAME("Chief Engineer")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/command/heads/CE
	shoes = /obj/item/clothing/shoes/workboots
	uniform = /obj/item/clothing/under/odyssey/blue
	pda_type = /obj/item/modular_computer/pda/heads/ce
	l_ear = /obj/item/radio/headset/heads/ce

/decl/hierarchy/outfit/job/odyssey/CE/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/chevrons/command/chevrons = new()
		var/obj/item/clothing/accessory/dept_stripes/engineering/stripes = new()
		if(uniform.can_attach_accessory(chevrons))
			uniform.attach_accessory(null, chevrons)
		if(uniform.can_attach_accessory(stripes))
			uniform.attach_accessory(null, stripes)
		else
			qdel(chevrons)
			qdel(stripes)

/decl/hierarchy/outfit/job/odyssey/SSC
	name = ODYSSEY_OUTFIT_JOB_NAME("Ship Security Commander")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/command/heads/SSC
	shoes = /obj/item/clothing/shoes/jackboots/duty
	uniform = /obj/item/clothing/under/odyssey/blue
	pda_type = /obj/item/modular_computer/pda/security
	l_ear = /obj/item/radio/headset/heads/hos

/decl/hierarchy/outfit/job/odyssey/SSC/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/chevrons/command/chevrons = new()
		var/obj/item/clothing/accessory/dept_stripes/security/stripes = new()
		if(uniform.can_attach_accessory(chevrons))
			uniform.attach_accessory(null, chevrons)
		if(uniform.can_attach_accessory(stripes))
			uniform.attach_accessory(null, stripes)
		else
			qdel(chevrons)
			qdel(stripes)

/decl/hierarchy/outfit/job/odyssey/CMO
	name = ODYSSEY_OUTFIT_JOB_NAME("Chief Medical Officer")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/command/heads/CMO
	shoes = /obj/item/clothing/shoes/color/black
	uniform = /obj/item/clothing/under/odyssey/white
	pda_type = /obj/item/modular_computer/pda/medical
	belt = /obj/item/scanner/health
	l_ear = /obj/item/radio/headset/heads/cmo

/decl/hierarchy/outfit/job/odyssey/CMO/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/chevrons/command/chevrons = new()
		var/obj/item/clothing/accessory/dept_stripes/medical/stripes = new()
		if(uniform.can_attach_accessory(chevrons))
			uniform.attach_accessory(null, chevrons)
		if(uniform.can_attach_accessory(stripes))
			uniform.attach_accessory(null, stripes)
		else
			qdel(chevrons)
			qdel(stripes)

/decl/hierarchy/outfit/job/odyssey/TD
	name = ODYSSEY_OUTFIT_JOB_NAME("Technology Director")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/command/heads/TD
	shoes = /obj/item/clothing/shoes/color/black
	uniform = /obj/item/clothing/under/odyssey/blue
	pda_type = /obj/item/modular_computer/pda/science
	l_ear = /obj/item/radio/headset/heads/rd

/decl/hierarchy/outfit/job/odyssey/TD/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/chevrons/command/chevrons = new()
		var/obj/item/clothing/accessory/dept_stripes/science/stripes = new()
		if(uniform.can_attach_accessory(chevrons))
			uniform.attach_accessory(null, chevrons)
		if(uniform.can_attach_accessory(stripes))
			uniform.attach_accessory(null, stripes)
		else
			qdel(chevrons)
			qdel(stripes)

/decl/hierarchy/outfit/job/odyssey/bosun
	name = ODYSSEY_OUTFIT_JOB_NAME("Bosun")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/command/heads/bosun
	shoes = /obj/item/clothing/shoes/workboots
	uniform = /obj/item/clothing/under/odyssey/blue
	pda_type = /obj/item/modular_computer/pda/cargo
	belt = /obj/item/clipboard/ebony
	l_ear = /obj/item/radio/headset/headset_bosun

/decl/hierarchy/outfit/job/odyssey/bosun/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/chevrons/command/chevrons = new()
		var/obj/item/clothing/accessory/dept_stripes/cargo/stripes = new()
		if(uniform.can_attach_accessory(chevrons))
			uniform.attach_accessory(null, chevrons)
		if(uniform.can_attach_accessory(stripes))
			uniform.attach_accessory(null, stripes)
		else
			qdel(chevrons)
			qdel(stripes)

/decl/hierarchy/outfit/job/odyssey/bridge_officer
	name = ODYSSEY_OUTFIT_JOB_NAME("Bridge Officer")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/command
	shoes = /obj/item/clothing/shoes/jackboots/duty
	uniform = /obj/item/clothing/under/odyssey/blue
	pda_type = /obj/item/modular_computer/pda
	l_ear = /obj/item/radio/headset/heads/hop

/decl/hierarchy/outfit/job/odyssey/bridge_officer/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/dept_stripes/command/stripes = new()
		if(uniform.can_attach_accessory(stripes))
			uniform.attach_accessory(null, stripes)
		else
			qdel(stripes)

//SECURITY//

/decl/hierarchy/outfit/job/odyssey/security
	name = ODYSSEY_OUTFIT_JOB_NAME("Security Officer")

/decl/hierarchy/outfit/job/odyssey/security/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/dept_stripes/security/stripes = new()
		if(uniform.can_attach_accessory(stripes))
			uniform.attach_accessory(null, stripes)
		else
			qdel(stripes)

/decl/hierarchy/outfit/job/odyssey/security/brig_chief
	name = ODYSSEY_OUTFIT_JOB_NAME("Chief Officer")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/security
	shoes = /obj/item/clothing/shoes/jackboots/duty
	uniform = /obj/item/clothing/under/odyssey/black
	pda_type = /obj/item/modular_computer/pda/security
	l_ear = /obj/item/radio/headset/heads/hos

/decl/hierarchy/outfit/job/odyssey/security/armsman
	name = ODYSSEY_OUTFIT_JOB_NAME("Armsman")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/security
	shoes = /obj/item/clothing/shoes/jackboots/duty
	uniform = /obj/item/clothing/under/odyssey/black
	pda_type = /obj/item/modular_computer/pda/security
	l_ear = /obj/item/radio/headset/headset_sec

/decl/hierarchy/outfit/job/odyssey/security/gunship_pilot
	name = ODYSSEY_OUTFIT_JOB_NAME("Gunship Pilot")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/security
	shoes = /obj/item/clothing/shoes/jackboots/duty
	uniform = /obj/item/clothing/under/odyssey/black
	pda_type = /obj/item/modular_computer/pda/security
	l_ear = /obj/item/radio/headset/headset_sec


//ENGINEERING//

/decl/hierarchy/outfit/job/odyssey/engineering
	name = ODYSSEY_OUTFIT_JOB_NAME("Engineer")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/engineering
	shoes = /obj/item/clothing/shoes/workboots
	uniform = /obj/item/clothing/under/odyssey/tan
	pda_type = /obj/item/modular_computer/pda/engineering
	l_ear = /obj/item/radio/headset/headset_eng

/decl/hierarchy/outfit/job/odyssey/engineering/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/dept_stripes/engineering/stripes = new()
		if(uniform.can_attach_accessory(stripes))
			uniform.attach_accessory(null, stripes)
		else
			qdel(stripes)


//MEDICAL//

/decl/hierarchy/outfit/job/odyssey/medical
	name = ODYSSEY_OUTFIT_JOB_NAME("Medical")

/decl/hierarchy/outfit/job/odyssey/medical/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/dept_stripes/medical/stripes = new()
		if(uniform.can_attach_accessory(stripes))
			uniform.attach_accessory(null, stripes)
		else
			qdel(stripes)

/decl/hierarchy/outfit/job/odyssey/medical/medtech
	name = ODYSSEY_OUTFIT_JOB_NAME("Medical Support Technician")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/medical
	shoes = /obj/item/clothing/shoes/color/black
	uniform = /obj/item/clothing/under/odyssey/white
	pda_type = /obj/item/modular_computer/pda/medical
	belt = /obj/item/scanner/health
	l_ear = /obj/item/radio/headset/headset_med


/decl/hierarchy/outfit/job/odyssey/medical/doctor
	name = ODYSSEY_OUTFIT_JOB_NAME("Doctor")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/medical
	shoes = /obj/item/clothing/shoes/color/black
	uniform = /obj/item/clothing/under/odyssey/white
	pda_type = /obj/item/modular_computer/pda/medical
	belt = /obj/item/scanner/health
	l_ear = /obj/item/radio/headset/headset_med


/decl/hierarchy/outfit/job/odyssey/medical/pharmacist
	name = ODYSSEY_OUTFIT_JOB_NAME("Pharmacist")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/medical
	shoes = /obj/item/clothing/shoes/color/black
	uniform = /obj/item/clothing/under/odyssey/white
	pda_type = /obj/item/modular_computer/pda/medical
	l_ear = /obj/item/radio/headset/headset_med


//SCIENCE//

/decl/hierarchy/outfit/job/odyssey/research
	name = ODYSSEY_OUTFIT_JOB_NAME("Research")

/decl/hierarchy/outfit/job/odyssey/research/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/dept_stripes/science/stripes = new()
		if(uniform.can_attach_accessory(stripes))
			uniform.attach_accessory(null, stripes)
		else
			qdel(stripes)

/decl/hierarchy/outfit/job/odyssey/research/research_tech
	name = ODYSSEY_OUTFIT_JOB_NAME("Research Technician")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/science
	shoes = /obj/item/clothing/shoes/color/black
	uniform = /obj/item/clothing/under/odyssey/white
	pda_type = /obj/item/modular_computer/pda/science
	l_ear = /obj/item/radio/headset/headset_sci


/decl/hierarchy/outfit/job/odyssey/research/robotics
	name = ODYSSEY_OUTFIT_JOB_NAME("Robotics Specialist")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/science
	shoes = /obj/item/clothing/shoes/color/black
	uniform = /obj/item/clothing/under/odyssey/white
	pda_type = /obj/item/modular_computer/pda/science
	l_ear = /obj/item/radio/headset/headset_sci


//CARGO//

/decl/hierarchy/outfit/job/odyssey/cargo
	name = ODYSSEY_OUTFIT_JOB_NAME("Cargo")

/decl/hierarchy/outfit/job/odyssey/cargo/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/dept_stripes/cargo/stripes = new()
		if(uniform.can_attach_accessory(stripes))
			uniform.attach_accessory(null, stripes)
		else
			qdel(stripes)

/decl/hierarchy/outfit/job/odyssey/cargo/deck_hand
	name = ODYSSEY_OUTFIT_JOB_NAME("Deck Hand")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/cargo
	shoes = /obj/item/clothing/shoes/workboots
	uniform = /obj/item/clothing/under/odyssey/olive
	pda_type = /obj/item/modular_computer/pda/cargo
	belt = /obj/item/clipboard/ebony
	l_ear = /obj/item/radio/headset/headset_cargo

/decl/hierarchy/outfit/job/odyssey/cargo/salvage_technician
	name = ODYSSEY_OUTFIT_JOB_NAME("Salvage Technician")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/cargo
	shoes = /obj/item/clothing/shoes/workboots
	uniform = /obj/item/clothing/under/odyssey/olive
	pda_type = /obj/item/modular_computer/pda/cargo
	l_ear = /obj/item/radio/headset/headset_cargo



//SERVICE//

/decl/hierarchy/outfit/job/odyssey/chef
	name = ODYSSEY_OUTFIT_JOB_NAME("Chef")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/civilian
	shoes = /obj/item/clothing/shoes/color/white
	uniform = /obj/item/clothing/under/odyssey/white
	pda_type = /obj/item/modular_computer/pda
	l_ear = /obj/item/radio/headset/headset_service


/decl/hierarchy/outfit/job/odyssey/bartender
	name = ODYSSEY_OUTFIT_JOB_NAME("Bartender")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/civilian
	shoes = /obj/item/clothing/shoes/color/white
	uniform = /obj/item/clothing/under/odyssey/white
	pda_type = /obj/item/modular_computer/pda
	l_ear = /obj/item/radio/headset/headset_service


/decl/hierarchy/outfit/job/odyssey/botanist
	name = ODYSSEY_OUTFIT_JOB_NAME("Botanist")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/civilian
	shoes = /obj/item/clothing/shoes/workboots
	uniform = /obj/item/clothing/under/odyssey/black
	pda_type = /obj/item/modular_computer/pda
	l_ear = /obj/item/radio/headset/headset_service

/decl/hierarchy/outfit/job/odyssey/janitor
	name = ODYSSEY_OUTFIT_JOB_NAME("Janitor")
	flags = OUTFIT_HAS_BACKPACK
	id_type = /obj/item/card/id/odyssey/civilian
	shoes = /obj/item/clothing/shoes/workboots
	uniform = /obj/item/clothing/under/odyssey/black
	pda_type = /obj/item/modular_computer/pda
	l_ear = /obj/item/radio/headset/headset_service



/obj/item/card/id/odyssey
	name = "identification card"
	desc = "A typical identification card."

///CIVILIAN///

/obj/item/card/id/odyssey/civilian
	detail_color = COLOR_GREEN

///CARGO///

/obj/item/card/id/odyssey/cargo
	detail_color = COLOR_BEASTY_BROWN

///MEDICAL///

/obj/item/card/id/odyssey/medical
	detail_color = COLOR_DEEP_SKY_BLUE

///SECURITY///

/obj/item/card/id/odyssey/security
	detail_color = COLOR_NT_RED

///SCIENCE///

/obj/item/card/id/odyssey/science
	detail_color = COLOR_VIOLET

///ENGINEERING///

/obj/item/card/id/odyssey/engineering
	detail_color = COLOR_AMBER

///COMMAND///

/obj/item/card/id/odyssey/command
	color = COLOR_COMMAND_BLUE

/obj/item/card/id/odyssey/command/heads
	extra_details = list("goldstripe")
	detail_color = COLOR_AMBER

/obj/item/card/id/odyssey/command/heads/CE
	detail_color = COLOR_DARK_ORANGE

/obj/item/card/id/odyssey/command/heads/CMO
	detail_color = "#92e7fc"

/obj/item/card/id/odyssey/command/heads/SSC
	detail_color = COLOR_NT_RED

/obj/item/card/id/odyssey/command/heads/TD
	detail_color = COLOR_VIOLET

/obj/item/card/id/odyssey/command/heads/bosun
	detail_color = COLOR_BEASTY_BROWN

/obj/item/card/id/odyssey/command/heads/captain
	color = COLOR_AMBER

/obj/item/card/id/odyssey/command/heads/captain/Initialize()
	. = ..()
	access = get_all_station_access()