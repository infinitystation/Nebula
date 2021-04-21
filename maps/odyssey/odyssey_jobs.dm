/datum/map/odyssey
	default_assistant_title = "Crewmember"
	allowed_jobs = list(
		/datum/job/assistant,
		/datum/job/odyssey/command/captain,
		/datum/job/odyssey/command/first_officer,
		/datum/job/odyssey/security/SSC,
		/datum/job/odyssey/engineering/CE,
		/datum/job/odyssey/medical/CMO,
		/datum/job/odyssey/science/TD,
		/datum/job/odyssey/civilian/bosun,
		/datum/job/odyssey/command/bridge_officer,
		/datum/job/odyssey/security/brig_chief,
		/datum/job/odyssey/security/armsmen,
		/datum/job/odyssey/engineering/engineer,
		/datum/job/odyssey/medical/medtech,
		/datum/job/odyssey/medical/doctor,
		/datum/job/odyssey/medical/pharmacist,
		/datum/job/odyssey/science/research_tech,
		/datum/job/odyssey/science/robotics,
		/datum/job/odyssey/civilian/deck_hand,
		/datum/job/odyssey/civilian/salvage_tech,
		/datum/job/odyssey/civilian/chef,
		/datum/job/odyssey/civilian/bartender,
		/datum/job/odyssey/civilian/botanist,
		/datum/job/odyssey/civilian/janitor,
		/datum/job/odyssey/civilian/stowaway,
		/datum/job/symbiote
		)

#define HEAD_JOBS        /datum/job/odyssey/security/SSC, /datum/job/odyssey/engineering/CE, /datum/job/odyssey/medical/CMO, /datum/job/odyssey/science/TD
#define COMMAND_JOBS     /datum/job/odyssey/command/captain, /datum/job/odyssey/command/first_officer
#define MEDICAL_JOBS     /datum/job/odyssey/medical/CMO, /datum/job/odyssey/medical/medtech, /datum/job/odyssey/medical/doctor, /datum/job/odyssey/medical/pharmacist
#define SCIENCE_JOBS     /datum/job/odyssey/science/TD, /datum/job/odyssey/science/research_tech, /datum/job/odyssey/science/robotics,
#define SECURITY_JOBS    /datum/job/odyssey/security/SSC, /datum/job/odyssey/security/brig_chief, /datum/job/odyssey/security/armsmen
#define ENGINEERING_JOBS /datum/job/odyssey/engineering/CE, /datum/job/odyssey/engineering/engineer

	species_to_job_blacklist = list(
		/decl/species/utility_frame = list(
			HEAD_JOBS,
			COMMAND_JOBS
		),
		/decl/species/tajaran = list(
			COMMAND_JOBS
		),
		/decl/species/lizard = list(
			HEAD_JOBS,
			COMMAND_JOBS,
			SECURITY_JOBS
		),
		/decl/species/adherent = list(
			MEDICAL_JOBS,
			SCIENCE_JOBS
		),
		/decl/species/serpentid = list(
			SCIENCE_JOBS,
			ENGINEERING_JOBS,
			/datum/job/odyssey/medical/CMO,
			/datum/job/odyssey/medical/medtech,
			/datum/job/odyssey/medical/doctor,
			/datum/job/odyssey/civilian/chef
		),
	)

#undef HEAD_JOBS
#undef COMMAND_JOBS
#undef MEDICAL_JOBS
#undef SCIENCE_JOBS
#undef SECURITY_JOBS
#undef ENGINEERING_JOBS
