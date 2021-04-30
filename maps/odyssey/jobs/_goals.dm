/decl/department/command
	goals = list(/datum/goal/department/paperwork/odyssey)

var/global/list/odyssey_paperwork_spawn_turfs = list()
var/global/list/odyssey_paperwork_end_areas = list()

/obj/effect/landmark/paperwork_spawn_odyssey
	name = "USN Odyssey Paperwork Goal Spawn Point"

/obj/effect/landmark/paperwork_spawn_odyssey/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	if(istype(T))
		global.odyssey_paperwork_spawn_turfs |= T
	return INITIALIZE_HINT_QDEL

/obj/effect/landmark/paperwork_finish_odyssey
	name = "USN Odyssey Paperwork Goal Finish Point"

/obj/effect/landmark/paperwork_finish_odyssey/Initialize()
	. = ..()
	var/turf/T = get_turf(src)
	if(istype(T))
		var/area/A = get_area(T)
		if(istype(A))
			global.odyssey_paperwork_end_areas |= A
	return INITIALIZE_HINT_QDEL

/datum/goal/department/paperwork/odyssey
	paperwork_types = list(
		/obj/item/paperwork/odyssey
	)

	signatory_job_list = list(
		/datum/job/odyssey/command/captain,
		/datum/job/odyssey/command/first_officer
		)

/datum/goal/department/paperwork/odyssey/get_spawn_turfs()
	return global.odyssey_paperwork_spawn_turfs

/datum/goal/department/paperwork/odyssey/get_end_areas()
	return global.odyssey_paperwork_end_areas

/obj/item/paperwork/odyssey
	name = "\improper USN Odyssey payroll paperwork"
	desc = "A complex list of salaries, hours and tax withheld for Odyssey workers this month."
