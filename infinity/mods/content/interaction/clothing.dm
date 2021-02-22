//clothing zippers, used in couple of procs

/obj/item/clothing/under
	var/zipper = FALSE

/obj/item/clothing/under/examine(mob/user)
	. = ..()
	if(. && zipper)
		to_chat(user, SPAN_NOTICE("Zipper is opened."))

/obj/item/clothing/under/verb/zipper()
	set name = "Toggle Zipper"
	set category = "Object"
	set src in usr

	if(usr.stat || usr.restrained())
		return

	zipper = !zipper
	usr.visible_message(SPAN_NOTICE("[usr.name] [zipper ? "opens" : "closes"] zipper on their [name]."))
