/decl/department/command
	goals = list(/datum/goal/department/paperwork/constellation)

var/global/list/constellation_paperwork_spawn_turfs = list()
var/global/list/constellation_paperwork_end_areas = list()

/obj/effect/landmark/paperwork_spawn_constellation
	name = "Constellation Paperwork Goal Spawn Point"

/obj/effect/landmark/paperwork_spawn_constellation/Initialize()
	..()
	var/turf/T = get_turf(src)
	if(istype(T))
		global.constellation_paperwork_spawn_turfs |= T
	return INITIALIZE_HINT_QDEL

/obj/effect/landmark/paperwork_finish_constellation
	name = "Constellation Paperwork Goal Finish Point"

/obj/effect/landmark/paperwork_finish_constellation/Initialize()
	..()
	var/turf/T = get_turf(src)
	if(istype(T))
		var/area/A = get_area(T)
		if(istype(A))
			global.constellation_paperwork_end_areas |= A
	return INITIALIZE_HINT_QDEL

/datum/goal/department/paperwork/constellation
	paperwork_types = list(
		/obj/item/paperwork/constellation
	)
	signatory_job_list = list(
		/datum/job/constellation/command/captain,
		/datum/job/constellation/command/logistics_officer
	)

/datum/goal/department/paperwork/constellation/get_spawn_turfs()
	return global.constellation_paperwork_spawn_turfs

/datum/goal/department/paperwork/constellation/get_end_areas()
	return global.constellation_paperwork_end_areas

/obj/item/paperwork/constellation
	name = "\improper Tradehouse payroll paperwork"
	desc = "A complex list of salaries, hours and tax withheld for Tradehouse workers this month."
