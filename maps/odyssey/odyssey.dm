#if !defined(USING_MAP_DATUM)

// NEBULA MODS START
	#include "../../mods/content/mundane.dm"
	#include "../../mods/content/bigpharma/_bigpharma.dme"
	#include "../../mods/content/corporate/_corporate.dme"
	#include "../../mods/content/government/_government.dme"
	#include "../../mods/content/modern_earth/_modern_earth.dme"
	#include "../../mods/content/mouse_highlights/_mouse_highlight.dme"
	#include "../../mods/content/psionics/_psionics.dme"
	#include "../../mods/content/scaling_descriptors.dm"
	#include "../../mods/content/xenobiology/_xenobiology.dme"

	#include "../../mods/mobs/dionaea/_dionaea.dme"
	#include "../../mods/mobs/borers/_borers.dme"

	#include "../../mods/species/ascent/_ascent.dme"
	#include "../../mods/species/utility_frames/_utility_frames.dme"
	#include "../../mods/species/tajaran/_tajaran.dme"
	#include "../../mods/species/lizard/_lizard.dme"
	#include "../../mods/species/adherent/_adherent.dme"
// NEBULA MODS END

// STARLIGHT MODS START
	#include "../../starlight/mods/content/starlight/_starlight.dme"

	#include "../../starlight/mods/species/booster/_booster.dme"
	#include "../../starlight/mods/species/vatgrown/_vatgrown.dme"
	#include "../../starlight/mods/species/resomi/_resomi.dme"
// STARLIGHT MODS END

	#include "../random_ruins/exoplanet_ruins/playablecolony/playablecolony.dm"
	#include "../../mods/content/government/away_sites/icarus/icarus.dm"
	#include "../../mods/content/corporate/away_sites/lar_maria/lar_maria.dm"

	#include "../away/liberia/liberia.dm"
	#include "../away/bearcat/bearcat.dm"
	#include "../away/casino/casino.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/mining/mining.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/unishi/unishi.dm"
	#include "../away/yacht/yacht.dm"

	#include "odyssey-1.dmm"
	#include "odyssey-2.dmm"
	#include "odyssey-3.dmm"
	#include "odyssey-4.dmm"
	#include "odyssey-extras.dmm"
	#include "odyssey-supply.dmm"

	#include "odyssey_antagonists.dm"
	#include "odyssey_areas.dm"
	#include "odyssey_branches.dm"
	#include "odyssey_cameras.dm"
	#include "odyssey_evac.dm"
	#include "odyssey_jobs.dm"
	#include "odyssey_misc.dm"
	#include "odyssey_outfits.dm"
	#include "odyssey_overmap.dm"
	#include "odyssey_papers.dm"
	#include "odyssey_presets.dm"
	#include "odyssey_security_state.dm"
	#include "odyssey_shuttles.dm"
	#include "odyssey_spawnpoints.dm"
	#include "odyssey_uniforms.dm"
	#include "odyssey_unit_tests.dm"

	#include "decals/floor_decals.dm"

	#include "jobs/_departmens.dm"
	#include "jobs/_goals.dm"
	#include "jobs/_jobs.dm"
	#include "jobs/civilian.dm"
	#include "jobs/command.dm"
	#include "jobs/engineering.dm"
	#include "jobs/medical.dm"
	#include "jobs/science.dm"
	#include "jobs/security.dm"

	#include "machines/smes.dm"
	#include "machines/atmos_machinery.dm"
	#include "machines/autoset_doors.dm"
	#include "machines/celltimers.dm"
	#include "machines/coffeemachine.dm"
	#include "machines/morgue_machines.dm"
	#include "machines/consoles.dm"
	#include "machines/telecomms.dm"
	#include "machines/shield_generator.dm"

	#include "structures/lockers.dm"

	#include "turfs/fuel_tank.dm"

	#define USING_MAP_DATUM /datum/map/odyssey

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Odyssey

#endif
