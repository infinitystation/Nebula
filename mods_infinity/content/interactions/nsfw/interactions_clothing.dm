/obj/item/clothing/under
	var/zipped = TRUE

/obj/item/clothing/under/examine(mob/user)
	. = ..()
	if(. && !zipped)
		to_chat(user, SPAN_NOTICE("The zipper is opened."))

/obj/item/clothing/under/verb/toggle_zipper()
	set name = "Toggle Zipper"
	set category = "Object"
	set src in view(1)

	if(!CanPhysicallyInteract(usr))
		return

	var/mob/living/carbon/human/H = loc
	zipped = !zipped
	usr.visible_message(SPAN_NOTICE("\The [usr] [zipped ? "closes" : "opens"] zipper on [istype(H) && (H.w_uniform == src) ? "\the [H]'s " : null][src]."))
