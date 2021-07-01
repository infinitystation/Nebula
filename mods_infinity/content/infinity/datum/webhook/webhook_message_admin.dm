/decl/webhook/message_admin
	id = "webhook_message_admin"

/decl/webhook/message_admin/get_message(list/data)
	. = ..()
	.["content"] = "**ADMIN LOG:** [data["log_message"]]"
