/datum/spawnpoint/cryo
	msg = "has completed cryogenic awakening"

/datum/spawnpoint/cryo/after_join(mob/living/carbon/human/victim)
	if(!istype(victim))
		return

	var/area/A = get_area(victim)
	var/list/spots = list()

	for(var/obj/machinery/cryopod/C in A)
		if(!C.occupant)
			spots += C

	if(!length(spots))
		to_chat(victim, "You woke up a bit earlier than everyone.")
		turfs -= get_turf(victim)
		return

	for(var/obj/machinery/cryopod/C in shuffle(spots))
		if(!C.occupant)

			// Store any held or equipped items.
			var/obj/item/storage/backpack/pack = victim.back
			if(istype(pack))
				for(var/atom/movable/thing in victim.get_held_items())
					victim.drop_from_inventory(thing)
					pack.handle_item_insertion(thing)

			C.set_occupant(victim, 1)
			to_chat(victim, SPAN_NOTICE("You're awakening from cryosleep..."))
			victim.sleeping = 0
			victim.Sleeping(rand(2,7))
			victim.bodytemperature = victim.species.cold_level_1 //very cold, but a point before damage

			if(!victim.isSynthetic()) //fluff. I didn't used else at next lines because of code readness
				to_chat(victim, SPAN_NOTICE(\
					"You're feeling cold and realize that there are water drops on your face. \
					Cryogenic Liquid just stopped refrigerating the air in the chamber... You see a bright light, blinding you. \
					Yet another shift has begun."))
			else
				to_chat(victim, SPAN_NOTICE(\
					"Awakening signal received. Battery is charged. All systems nominal. Ready to work, my lord."))

			if(!victim.isSynthetic())
				give_effect(victim)
				give_advice(victim)

				victim.drowsyness += 30

			break
