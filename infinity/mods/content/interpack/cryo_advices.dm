/datum/spawnpoint/cryo/proc/give_advice(mob/user)
	if(!istype(user))
		return

	var/desc = pick(
		SPAN_NOTICE("You're feeling normal. The only thing you want to do is eat and start working."),
		SPAN_NOTICE("You're feeling drowsy. You want to sleep..."),
		SPAN_NOTICE("<b>You're feeling confident. You need to keep it up. If not you - then no one!</b>"),
		SPAN_NOTICE("You're feeling the taste of blood in your mouth. You wonder why..."),
		SPAN_NOTICE("You feel light-headed. A normal awakening..."),
		SPAN_NOTICE("You're feeling dirty..."),
		SPAN_NOTICE("This smell...cryogenic liquid. Your nose tickles."),
		SPAN_NOTICE("You forgot something. You definitely wanted to do something today, but forgot what..."),
		SPAN_NOTICE("You're feeling really weak. Maybe this is from space?"),
		SPAN_NOTICE("You don't remember what happened before you woke up. Weird..."),
		SPAN_NOTICE("Huh, shouldn't they pay us in actual money instead of some weird plastic coupons?"),
		SPAN_NOTICE("Maybe I should prank someone? There's nothing else to do on this rust bucket."),
		SPAN_WARNING("You're feeling really bad. The stresses of space and the claustrophobic environment of the station really got you."),
		SPAN_WARNING("You're feeling that something dangerous to your own life is going to happen today..."),
		SPAN_WARNING("You feel pain pulsing through your head..."),
		SPAN_WARNING("You're feeling like something scared you...for no reason."))

	to_chat(user, desc)
