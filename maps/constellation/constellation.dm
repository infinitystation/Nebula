#if !defined(USING_MAP_DATUM)

// NEBULA MODS START
	#include "../../mods/content/corporate/_corporate.dme"
	#include "../../mods/content/bigpharma/_bigpharma.dme"

	#include "../../mods/mobs/dionaea/_dionaea.dme"
	#include "../../mods/mobs/borers/_borers.dme"

	#include "../../mods/species/utility_frames/_utility_frames.dme"
//	#include "../../mods/species/tajaran/_tajaran.dme"
//	#include "../../mods/species/lizard/_lizard.dme"
// NEBULA MODS END

// INFINITY MODS START
	#include "../../infinity/mods/content/infinity/_infinity.dme"

	#include "../../infinity/mods/species/booster/_booster.dme"
	#include "../../infinity/mods/species/resomi/_resomi.dme"
	#include "../../infinity/mods/species/vatgrown/_vatgrown.dme"
	#include "../../infinity/mods/species/skrell/_skrell.dme"
	#include "../../infinity/mods/species/tajaran/_tajaran.dme"
	#include "../../infinity/mods/species/lizard/_lizard.dme"
// INFINITY MODS END

	#include "../random_ruins/exoplanet_ruins/playablecolony/playablecolony.dm"

	#include "../../mods/content/government/away_sites/icarus/icarus.dm"
	#include "../../mods/content/government/ruins/ec_old_crash/ec_old_crash.dm"
	#include "../../mods/content/corporate/away_sites/lar_maria/lar_maria.dm"

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

	#include "constellation_antagonists.dm"
	#include "constellation_areas.dm"
	#include "constellation_documents.dm"
	#include "constellation_jobs.dm"
	#include "constellation_loadout.dm"
	#include "constellation_lobby.dm"
	#include "constellation_overmap.dm"
	#include "constellation_overrides.dm"
	#include "constellation_shuttles.dm"
	#include "constellation_spawnpoints.dm"
	#include "constellation_unit_testing.dm"

	#include "jobs/_goals.dm"
	#include "jobs/_jobs.dm"
	#include "jobs/command.dm"
	#include "jobs/engineering.dm"
	#include "jobs/medical.dm"
	#include "jobs/science.dm"
	#include "outfits/_outfits.dm"
	#include "outfits/command.dm"
	#include "outfits/engineering.dm"
	#include "outfits/medical.dm"
	#include "outfits/science.dm"

	#include "constellation-1.dmm"
	#include "constellation-2.dmm"
	#include "constellation-3.dmm"
	#include "constellation-4.dmm"

	#define USING_MAP_DATUM /datum/map/constellation

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Constellation

#endif
