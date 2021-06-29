/obj/item/clothing/under
	var/zipper = FALSE

/obj/item/clothing/under/examine(mob/user)
	. = ..()
	if(. && zipper)
		to_chat(user, SPAN_NOTICE("The zipper is opened."))

/obj/item/clothing/under/verb/toggle_zipper()
	set name = "Toggle Zipper"
	set category = "Object"
	set src in view(1)

	if(!CanPhysicallyInteract(usr))
		return

	var/mob/living/carbon/human/H = loc
	zipper = !zipper
	usr.visible_message(SPAN_NOTICE("\The [usr] [zipper ? "opens" : "closes"] zipper on [istype(H) && (H.w_uniform == src) ? "\the [H]'s " : null][src]."))
