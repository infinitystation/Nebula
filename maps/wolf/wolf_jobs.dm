/datum/map/wolf
	default_assistant_title = "Crewmember"
	allowed_jobs = list(
		/datum/job/assistant,
		/datum/job/wolf/civilian/stowaway,
		/datum/job/wolf/command/captain,
		/datum/job/wolf/command/first_officer,
		/datum/job/wolf/security/SSC,
		/datum/job/wolf/engineering/CE,
		/datum/job/wolf/medical/CMO,
		/datum/job/wolf/science/TD,
		/datum/job/wolf/civilian/bosun,
		/datum/job/wolf/command/bridge_officer,
		/datum/job/wolf/security/brig_chief,
		/datum/job/wolf/security/armsmen,
		/datum/job/wolf/engineering/engineer,
		/datum/job/wolf/medical/medtech,
		/datum/job/wolf/medical/doctor,
		/datum/job/wolf/medical/pharmacist,
		/datum/job/wolf/science/research_tech,
		/datum/job/wolf/science/robotics,
		/datum/job/wolf/civilian/deck_hand,
		/datum/job/wolf/civilian/salvage_tech,
		/datum/job/wolf/civilian/chef,
		/datum/job/wolf/civilian/bartender,
		/datum/job/wolf/civilian/botanist,
		/datum/job/wolf/civilian/janitor
		)

#define HEAD_JOBS        /datum/job/wolf/security/SSC, /datum/job/wolf/engineering/CE, /datum/job/wolf/medical/CMO, /datum/job/wolf/science/TD
#define COMMAND_JOBS     /datum/job/wolf/command/captain, /datum/job/wolf/command/first_officer
#define MEDICAL_JOBS     /datum/job/wolf/medical/CMO, /datum/job/wolf/medical/medtech, /datum/job/wolf/medical/doctor, /datum/job/wolf/medical/pharmacist
#define SCIENCE_JOBS     /datum/job/wolf/science/TD, /datum/job/wolf/science/research_tech, /datum/job/wolf/science/robotics,
#define SECURITY_JOBS    /datum/job/wolf/security/SSC, /datum/job/wolf/security/brig_chief, /datum/job/wolf/security/armsmen
#define ENGINEERING_JOBS /datum/job/wolf/engineering/CE, /datum/job/wolf/engineering/engineer

	species_to_job_blacklist = list(
		/decl/species/utility_frame = list(
			HEAD_JOBS,
			COMMAND_JOBS
		),
		/decl/species/skrell = list(
			COMMAND_JOBS
		),
		/decl/species/tajaran = list(
			COMMAND_JOBS
		),
		/decl/species/unathi = list(
			HEAD_JOBS,
			COMMAND_JOBS,
			SECURITY_JOBS
		),
		/decl/species/resomi = list(
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
			/datum/job/wolf/medical/CMO, 
			/datum/job/wolf/medical/medtech, 
			/datum/job/wolf/medical/doctor,
			/datum/job/wolf/civilian/chef
		),
	)

#undef HEAD_JOBS
#undef COMMAND_JOBS
#undef MEDICAL_JOBS
#undef SCIENCE_JOBS
#undef SECURITY_JOBS
#undef ENGINEERING_JOBS
