/obj/item/card/id/wyrm/engineering
	name = "identification card"
	desc = "A card issued to engineering staff."
	detail_color = COLOR_SUN

/decl/hierarchy/outfit/job/wyrm/engineer
	name = WYRM_OUTFIT_JOB_NAME("Junior Engineer")
	uniform = /obj/item/clothing/under/hazard
	head = /obj/item/clothing/head/hardhat
	id_type = /obj/item/card/id/wyrm/engineering
	shoes = /obj/item/clothing/shoes/workboots
	belt = /obj/item/storage/belt/utility/full
	l_ear = /obj/item/radio/headset/headset_eng
	r_pocket = /obj/item/flashlight
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/wyrm/engineer/head
	name = WYRM_OUTFIT_JOB_NAME("Chief Engineer")
	uniform = /obj/item/clothing/under/chief_engineer
	glasses = /obj/item/clothing/glasses/welding/superior
	suit = /obj/item/clothing/suit/storage/hazardvest
	gloves = /obj/item/clothing/gloves/thick
	pda_type = /obj/item/modular_computer/pda/heads/ce
	id_type = /obj/item/card/id/wyrm/engineering/head
	l_ear = /obj/item/radio/headset/heads/ce

/obj/item/card/id/wyrm/engineering/head
	name = "identification card"
	desc = "A card which represents creativity and ingenuity."
	extra_details = list("goldstripe")
