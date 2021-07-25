/datum/map/torch
	default_job_type = /datum/job/assistant
	default_law_type = /datum/ai_laws/solgov

	species_to_job_whitelist = list(
		/decl/species/adherent = list(
			/datum/job/computer,
			/datum/job/robot,
			/datum/job/assistant,
			/datum/job/janitor,
			/datum/job/chef,
			/datum/job/bartender,
			/datum/job/cargo_tech,
			/datum/job/engineer,
			/datum/job/roboticist,
			/datum/job/chemist,
			/datum/job/scientist_assistant,
			/datum/job/scientist,
			/datum/job/nt_pilot,
			/datum/job/mining
		),
		/decl/species/serpentid = list(
			/datum/job/computer,
			/datum/job/robot,
			/datum/job/janitor,
			/datum/job/scientist_assistant,
			/datum/job/chemist,
			/datum/job/roboticist,
			/datum/job/cargo_tech,
			/datum/job/chef,
			/datum/job/engineer,
			/datum/job/doctor,
			/datum/job/bartender
		)
	)

#define COMMAND_JOBS /datum/job/captain, /datum/job/hop, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos, /datum/job/representative, /datum/job/sea, /datum/job/pathfinder, /datum/job/rd
	species_to_job_blacklist = list(
		/decl/species/lizard = list(
			COMMAND_JOBS,
			/datum/job/liaison,
			/datum/job/warden
		),
		/decl/species/tajaran = list(
			COMMAND_JOBS,
			/datum/job/liaison, 
			/datum/job/warden
		),
		/decl/species/utility_frame = list(
			COMMAND_JOBS,
			/datum/job/liaison,
			/datum/job/psychiatrist
		),
		/decl/species/human/booster = list(
			COMMAND_JOBS
		),
		/decl/species/human/dwarf = list(
			COMMAND_JOBS
		)
	)
#undef COMMAND_JOBS

	allowed_jobs = list(
		/datum/job/captain,
		/datum/job/hop,
		/datum/job/rd,
		/datum/job/cmo,
		/datum/job/chief_engineer,
		/datum/job/hos,
		/datum/job/liaison,
		/datum/job/bodyguard,
		/datum/job/representative,
		/datum/job/sea,
		/datum/job/bridgeofficer,
		/datum/job/pathfinder,
		/datum/job/nt_pilot,
		/datum/job/explorer,
		/datum/job/senior_engineer,
		/datum/job/engineer,
		/datum/job/roboticist,
		/datum/job/engineer_trainee,
		/datum/job/officer,
		/datum/job/warden,
		/datum/job/detective,
		/datum/job/senior_doctor,
		/datum/job/doctor,
		/datum/job/junior_doctor,
		/datum/job/chemist,
		/datum/job/medical_trainee,
		/datum/job/psychiatrist,
		/datum/job/chaplain,
		/datum/job/qm,
		/datum/job/cargo_tech,
		/datum/job/mining,
		/datum/job/janitor,
		/datum/job/chef,
		/datum/job/bartender,
		/datum/job/senior_scientist,
		/datum/job/scientist,
		/datum/job/scientist_assistant,
		/datum/job/robot,
		/datum/job/crew,
		/datum/job/assistant
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
