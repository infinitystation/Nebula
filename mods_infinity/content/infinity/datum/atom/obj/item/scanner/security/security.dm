/obj/item/scanner/security
	name = "security scanner"
	desc = "A hand-held security scanner which identifies banned items."
	icon = 'mods_infinity/content/infinity/datum/atom/obj/item/scanner/security/security.dmi'
	icon_state = ICON_STATE_WORLD

	// Todo: revisit
	origin_tech = "{'magnets':2}"

	scan_sound = 'mods_infinity/content/infinity/datum/atom/obj/item/scanner/security/scanner_security.ogg'
	var/scan_sound_detect = list(
		'mods_infinity/content/infinity/datum/atom/obj/item/scanner/security/scanner_security_detect_1.ogg',
		'mods_infinity/content/infinity/datum/atom/obj/item/scanner/security/scanner_security_detect_2.ogg'
	)

	use_delay = 2 SECONDS

	var/upgraded = FALSE

	// Main material used to detect.
	var/decl/material/detect_material = /decl/material/solid/metal/steel
	// In case if object doesn't have material, or we need forcetype something.
	var/list/detect_types = list(
		/obj/item/gun,
		/obj/item/grenade
	)

/obj/item/scanner/security/is_valid_scan_target(atom/A)
	return isliving(A) || isobj(A)

/obj/item/scanner/security/show_menu(mob/user)
	if(upgraded)
		..()

/obj/item/scanner/security/scan(atom/A, mob/user)
	var/list/scanned_objects = list(A)
	recursive_content_check(A, scanned_objects)
	
	for(var/obj/O in scanned_objects)
		if(istype(O.get_material(), detect_material) || is_type_in_list(O, detect_types))
			playsound(src, pick(scan_sound_detect), 30)
			break

	scan_title = null
	scan_data = null

	if(upgraded)
		var/scanned_objects_names = list()
		for(var/obj/item/I in scanned_objects)
			if(istype(I, A))
				continue

			if(!(istype(I.get_material(), detect_material) || is_type_in_list(I, detect_types)))
				continue

			scanned_objects_names += I.name
		
		scan_title = "Security scan - [A]"
		scan_data = jointext(scanned_objects_names, "<br>")

/obj/item/scanner/security/advanced
	name = "advanced security scanner"
	desc = "A hand-held security scanner which identifies banned items. It can print full info about scanned object or mob."
	upgraded = TRUE

/obj/item/scanner/security/fake
	detect_material = null
	detect_types = list()

/obj/machinery/vending/security/Initialize(mapload, d, populate_parts)
	LAZYADD(products, list(/obj/item/scanner/security = 4))
	. = ..()
