/decl/webhook/message_ooc
	id = "webhook_message_ooc"

// Data expects "client_key" and "client_message" fields.
/decl/webhook/message_ooc/get_message(list/data)
	. = ..()
	var/current_time = world.timeofday
	.["content"] = "`\[[time2text(current_time, "hh:mm:ss")]\]` **OOC: [data["client_key"]]**: [data["client_message"]]"

// OOC override
/decl/communication_channel/ooc/do_communicate(client/C, message)
	..()
	SSwebhooks.send("webhook_message_ooc", list("client_key" = C.key, "client_message" = message))
