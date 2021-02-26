/datum/spawnpoint/cryo/proc/give_effect(mob/living/carbon/human/H)
	if(!istype(H))
		return

	var/message = ""

	if(prob(20)) //starvation
		message += SPAN_WARNING("It seems like you forgot to eat before getting 'buried' in the chamber... ")
		H.nutrition = rand(0,200)
		H.hydration = rand(0,200)

	if(prob(15)) //stutterting and jittering (because of cold?)
		message += SPAN_WARNING("This cold is making me jittery... ")
		H.make_jittery(120)
		H.stuttering = 20

	if(prob(5)) //vomit
		message += SPAN_WARNING("I want to vomit... ")
		H.vomit()

	if(!message)
		message += SPAN_NOTICE("It seems like there weren't any bad effects today...but I couldn't sleep properly anyway. ")
	else
		message += SPAN_WARNING("Can't even sleep or live properly here... ")

	to_chat(H, message)
