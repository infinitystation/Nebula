/decl/modpack/starlight
	name = "Starlight Content Pack"

/decl/modpack/starlight/initialize()
	. = ..()
	admin_verbs_server.Add(/client/proc/update_server)
	for(var/client/C in GLOB.admins)
		C.remove_admin_verbs()
		C.add_admin_verbs()
