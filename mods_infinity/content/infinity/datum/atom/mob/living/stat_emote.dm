/mob/living
	var/list/stat_emote = list()

/mob/living/update_emotes(skip_sort)
	. = ..(skip_sort)
	stat_emote.Cut()
	for(var/emote as anything in usable_emotes)
		var/decl/emote/emote_datum = usable_emotes[emote]
		if(emote_datum.check_user(src))
			var/stat_emote/SE = new(src, emote_datum, src)
			stat_emote[emote_datum] = SE

/mob/living/Destroy()
	stat_emote.Cut()
	return ..()

/mob/living/Stat()
	. = ..()
	if(!.)
		return

	if(!stat_emote.len)
		return

	if(!statpanel("Emote"))
		return

	for(var/emote_type in stat_emote)
		var/stat_emote/SE = stat_emote[emote_type]
		stat(SE)

/stat_emote
	parent_type = /atom/movable
	simulated = FALSE

	var/decl/emote/emote
	var/mob/holder

/stat_emote/New(mob/living/loc, decl/emote/E, mob/_holder)
	if(!istype(loc))
		CRASH("Unexpected location. Expected /mob/living, was [loc.type].")

	emote = E
	holder = _holder
	name = capitalize(emote.key)
	..()

/stat_emote/Destroy()
	emote = null
	holder = null
	. = ..()

/stat_emote/Click(mob/given)
	holder.emote("[emote.key]")
