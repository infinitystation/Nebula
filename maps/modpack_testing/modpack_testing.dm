#if !defined(USING_MAP_DATUM)

	#include "modpack_testing_lobby.dm"
	#include "blank.dmm"

	#include "../../mods/content/corporate/_corporate.dme"
	#include "../../mods/content/government/_government.dme"
	#include "../../mods/content/mundane.dm"
	#include "../../mods/content/modern_earth/_modern_earth.dme"
	#include "../../mods/content/psionics/_psionics.dme"
	#include "../../mods/content/bigpharma/_bigpharma.dme"

	#include "../../mods/mobs/dionaea/_dionaea.dme"
	#include "../../mods/mobs/borers/_borers.dme"

	#include "../../mods/species/ascent/_ascent.dme"
	#include "../../mods/species/utility_frames/_utility_frames.dme"
	#include "../../mods/species/tajaran/_tajaran.dme"
	#include "../../mods/species/tritonian/_tritonian.dme"
	#include "../../mods/species/neocorvids/_neocorvids.dme"
	#include "../../mods/species/lizard/_lizard.dme"
	#include "../../mods/species/vox/_vox.dme"
	#include "../../mods/species/adherent/_adherent.dme"

// INFINITY MODS START
	#include "../../infinity/mods/content/infinity/_infinity.dme"
	#include "../../infinity/mods/content/interpack/_interpack.dme"
	#include "../../infinity/mods/content/europa_tileset/_europa_tileset.dme"

	#include "../../infinity/mods/species/booster/_booster.dme"
	#include "../../infinity/mods/species/resomi/_resomi.dme"
	#include "../../infinity/mods/species/vatgrown/_vatgrown.dme"
	#include "../../infinity/mods/species/skrell/_skrell.dme"
// INFINITY MODS END

	#define USING_MAP_DATUM /datum/map/modpack_testing

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Modpack Testing

#endif
