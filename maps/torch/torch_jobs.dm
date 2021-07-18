/datum/map/torch
	default_job_type = /datum/job/assistant
	default_law_type = /datum/ai_laws/solgov

/*
	species_to_job_whitelist = list(
		/datum/species/adherent = list(/datum/job/computer, /datum/job/robot, /datum/job/assistant, /datum/job/janitor, /datum/job/chef, /datum/job/bartender, /datum/job/cargo_tech,
										/datum/job/engineer, /datum/job/roboticist, /datum/job/chemist, /datum/job/scientist_assistant, /datum/job/scientist, /datum/job/nt_pilot,
										/datum/job/mining),
		/datum/species/nabber = list(/datum/job/computer, /datum/job/robot, /datum/job/janitor, /datum/job/scientist_assistant, /datum/job/chemist,
									 /datum/job/roboticist, /datum/job/cargo_tech, /datum/job/chef, /datum/job/engineer, /datum/job/doctor, /datum/job/bartender),
		/datum/species/vox = list(/datum/job/computer, /datum/job/robot),
		/datum/species/human/mule = list(/datum/job/computer, /datum/job/robot, /datum/job/submap)
	)

#define HUMAN_ONLY_JOBS /datum/job/captain, /datum/job/hop, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos, /datum/job/representative, /datum/job/sea, /datum/job/pathfinder, /datum/job/rd
	species_to_job_blacklist = list(
		/datum/species/unathi  = list(HUMAN_ONLY_JOBS, /datum/job/liaison, /datum/job/warden), //Other jobs unavailable via branch restrictions,
		/datum/species/unathi/yeosa = list(HUMAN_ONLY_JOBS, /datum/job/liaison, /datum/job/warden),
		/datum/species/skrell  = list(HUMAN_ONLY_JOBS),
		/datum/species/machine = list(HUMAN_ONLY_JOBS, /datum/job/liaison, /datum/job/psychiatrist),
		/datum/species/diona   = list(HUMAN_ONLY_JOBS, /datum/job/officer, /datum/job/bodyguard, /datum/job/liaison, /datum/job/warden, /datum/job/doctor, /datum/job/medical_trainee),	//Other jobs unavailable via branch restrictions,
	)
#undef HUMAN_ONLY_JOBS
*/
	allowed_jobs = list(
		/datum/job/captain, /datum/job/hop, /datum/job/rd, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos,
		/datum/job/liaison, /datum/job/bodyguard, /datum/job/representative, /datum/job/sea,
		/datum/job/bridgeofficer, /datum/job/pathfinder, /datum/job/nt_pilot, /datum/job/explorer,
		/datum/job/senior_engineer, /datum/job/engineer, /datum/job/roboticist, /datum/job/engineer_trainee,
		/datum/job/officer, /datum/job/warden, /datum/job/detective,
		/datum/job/senior_doctor, /datum/job/doctor, /datum/job/junior_doctor, /datum/job/chemist, /datum/job/medical_trainee,
		/datum/job/psychiatrist, /datum/job/chaplain,
		/datum/job/qm, /datum/job/cargo_tech, /datum/job/mining,
		/datum/job/janitor, /datum/job/chef, /datum/job/bartender,
		/datum/job/senior_scientist, /datum/job/scientist, /datum/job/scientist_assistant,
		/datum/job/robot,
		/datum/job/crew, /datum/job/assistant
	)

	access_modify_region = list(
		ACCESS_REGION_SECURITY = list(access_change_ids),
		ACCESS_REGION_MEDBAY = list(access_change_ids),
		ACCESS_REGION_RESEARCH = list(access_change_ids),
		ACCESS_REGION_ENGINEERING = list(access_change_ids),
		ACCESS_REGION_COMMAND = list(access_change_ids),
		ACCESS_REGION_GENERAL = list(access_change_ids),
		ACCESS_REGION_SUPPLY = list(access_change_ids),
		ACCESS_REGION_NT = list(access_change_ids)
	)
