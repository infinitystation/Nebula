#define ASSIGNMENT_SUPPLY "Supply"

/*
/datum/map/torch/setup_events()
	map_event_container = list(
				num2text(EVENT_LEVEL_MODERATE)	= new/datum/event_container/moderate/torch,
				num2text(EVENT_LEVEL_MAJOR) 	= new/datum/event_container/major/torch
			)
*/

/datum/event/prison_break/xenobiology
	eventDept = "Science"
	areaName = list("Xenobiology")
	areaType = list(/area/torch/research/xenobiology)
	areaNotType = list(/area/torch/research/xenobiology/xenoflora, /area/torch/research/xenobiology/xenoflora_storage)

/datum/event/prison_break/station
	eventDept = "Local"
	areaName = list("Brig","Supply Warehouse","Xenobiology","Engineering Hard Storage")
	areaType = list(/area/torch/security/brig, /area/torch/quartermaster/storage, /area/torch/research/xenobiology, /area/torch/engineering/hardstorage)
	areaNotType = list(/area/torch/research/xenobiology/xenoflora, /area/torch/research/xenobiology/xenoflora_storage, /area/torch/quartermaster/storage/upper)

/datum/event/prison_break/warehouse
	eventDept = "Supply"
	areaName = list("Supply Warehouse")
	areaType = list(/area/torch/quartermaster/storage)
	areaNotType = list(/area/torch/quartermaster/storage/upper)

/datum/event/prison_break/hardstorage
	eventDept = "Engineering"
	areaName = list("Engineering Hard Storage")
	areaType = list(/area/torch/engineering/hardstorage)

/datum/event_container/moderate/torch
	available_events = list(
		new/datum/event_meta(EVENT_LEVEL_MODERATE, "Xenobiology Breach",					/datum/event/prison_break/xenobiology,	0,		list(ASSIGNMENT_SCIENCE = 100)),
		new/datum/event_meta(EVENT_LEVEL_MODERATE, "Warehouse Breach",						/datum/event/prison_break/warehouse,	0,		list(ASSIGNMENT_SUPPLY = 100)),
		new/datum/event_meta(EVENT_LEVEL_MODERATE, "Hard Storage Breach",					/datum/event/prison_break/hardstorage,	0,		list(ASSIGNMENT_ENGINEER = 100)),		
		)

/datum/event_container/major/torch
	available_events = list(
		new/datum/event_meta(EVENT_LEVEL_MAJOR, "Containment Breach",				/datum/event/prison_break/station,	0,	list(ASSIGNMENT_ANY = 5))
		)
