/obj/item/music_tape
	name = "music tape"
	desc = "A magnetic tape adapted to outdated but proven music."
	icon = 'starlight/mods/content/starlight/icons/obj/items/music_tape.dmi'
	icon_state = ICON_STATE_WORLD
	item_state = "analyzer"
	w_class = ITEM_SIZE_TINY
	force = 1
	throwforce = 0

	matter = list(/decl/material/solid/plastic = 20, /decl/material/solid/metal/steel = 5, /decl/material/solid/glass = 5)

	var/ruined = FALSE
	var/random_color = TRUE
	var/datum/track/track
	var/uploader_ckey

/obj/item/music_tape/Initialize()
	. = ..()

	if(ispath(track, /music_track))
		track = pick(setup_music_tracks(track))

	if(random_color)
		color = get_random_colour()

	update_icon()

/obj/item/music_tape/on_update_icon()
	. = ..()
	overlays.Cut()
	overlays.Add(overlay_image(icon, "[icon_state]_overlay", flags = RESET_COLOR))
	if(ruined)
		overlays.Add(overlay_image(icon, "[icon_state]_ribbon", flags = RESET_COLOR))

/obj/item/music_tape/examine(mob/user)
	. = ..(user)
	if(track?.title)
		to_chat(user, SPAN_NOTICE("It's labeled as \"[track.title]\"."))

/obj/item/music_tape/attack_self(mob/user)
	if(!ruined)
		to_chat(user, SPAN_NOTICE("You pull out all the tape!"))
		ruin()

/obj/item/music_tape/attackby(obj/item/I, mob/user, params)
	if(ruined && (isScrewdriver(I) || istype(I, /obj/item/pen)))
		to_chat(user, SPAN_NOTICE("You start winding \the [src] back in..."))
		if(do_after(user, 120, target = src))
			to_chat(user, SPAN_NOTICE("You wound \the [src] back in."))
			fix()
		return

	if(istype(I, /obj/item/pen))
		if(loc == user && !user.incapacitated())
			var/new_name = input(user, "What would you like to label \the [src]?", "\improper [src] labeling", name) as null|text
			if(isnull(new_name) || new_name == name) return

			new_name = sanitizeSafe(new_name)

			if(new_name)
				to_chat(user, SPAN_NOTICE("You label \the [src] '[new_name]'."))
				track.title = "tape - \"[new_name]\""
			else
				to_chat(user, SPAN_NOTICE("You scratch off the label."))
				track.title = "tape - unknown"
		return
	..()

/obj/item/music_tape/fire_act()
	ruin()
	qdel(track)

/obj/item/music_tape/proc/CanPlay()
	if(!track)
		return FALSE

	if(ruined)
		return FALSE

	return TRUE

/obj/item/music_tape/proc/ruin()
	ruined = TRUE
	update_icon()

/obj/item/music_tape/proc/fix()
	ruined = FALSE
	update_icon()

/obj/item/music_tape/proc/setup_tape(mob/user)
	var/new_sound = input(user, "Select sound to upload. You should use only those audio formats which BYOND can accept. Module files is a good choice.", "Song Reminiscence") as null|sound
	if(isnull(new_sound))
		return FALSE

	var/new_name = input(user, "Name the tape:", "Song Reminiscence", "Untitled") as null|text
	if(isnull(new_name))
		return FALSE

	if(new_sound && new_name)
		if(track) qdel(track)
		if(user.ckey) uploader_ckey = user.ckey
		new_name = "music tape - [sanitizeSafe(new_name)]"
		track = new /datum/track(new_name, new_sound)
		return TRUE

	return FALSE

// Pre-made cassetes
/obj/item/music_tape/random/Initialize()
	. = ..()
	track = pick(setup_music_tracks())

/obj/item/music_tape/custom
	name = "dusty tape"
	desc = "A dusty tape, which can hold anything. Only what you need is blow the dust away and you will be able to play it again."

/obj/item/music_tape/custom/attack_self(mob/user)
	if(!ruined && !track)
		if(setup_tape(user))
			log_and_message_admins("uploaded new sound <a href='?_src_=holder;listen_tape_sound=\ref[track.GetTrack()]'>(preview)</a> in <a href='?_src_=holder;adminplayerobservefollow=\ref[src]'>\the [src]</a> with track name \"[track.title]\". <A HREF='?_src_=holder;wipe_tape_data=\ref[src]'>Wipe</A> data.")
		return
	..()

// Fabricator design
/datum/fabricator_recipe/music_tape_custom
	path = /obj/item/music_tape/custom
