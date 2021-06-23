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
	#include "../../starlight/mods/species/android/_android.dme"
// STARLIGHT MODS END

	#include "../random_ruins/exoplanet_ruins/playablecolony/playablecolony.dm"

	#include "wyrm_areas.dm"
	#include "wyrm_jobs.dm"
	#include "wyrm_overmap.dm"
	#include "wyrm_overrides.dm"
	#include "wyrm_presets.dm"
	#include "wyrm_shuttles.dm"
	#include "wyrm_holodecks.dm"
	#include "wyrm_datum_access.dm"
	#include "wyrm_unit_testing.dm"

	#include "wyrm-1.dmm"
	#include "wyrm-2.dmm"
	#include "wyrm-3.dmm"
	#include "wyrm-4.dmm"

	#include "../away/casino/casino.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/liberia/liberia.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/mining/mining.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/unishi/unishi.dm"
	#include "../away/yacht/yacht.dm"

	#include "jobs/_jobs.dm"
	#include "jobs/cargo.dm"
	#include "jobs/command.dm"
	#include "jobs/engineering.dm"
	#include "jobs/medical.dm"
	#include "jobs/science.dm"

	#include "outfits/_outfits.dm"
	#include "outfits/cargo.dm"
	#include "outfits/civilian.dm"
	#include "outfits/command.dm"
	#include "outfits/engineering.dm"
	#include "outfits/medical.dm"
	#include "outfits/science.dm"

	#include "items/lighting.dm"
	#include "turf/generic.dm"

	#define USING_MAP_DATUM /datum/map/wyrm

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Wyrm

#endif
