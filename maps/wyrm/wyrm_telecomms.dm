/obj/machinery/telecomms/hub/preset/wyrm
	network = "wyrm"
	autolinkers = list("busWyrm", "serverWyrm", "receiverWyrm", "broadcasterWyrm", "prim_relay", "sub_relay")
	light_color = "#4b734b"
	light_power = 1
	light_range = 4

/obj/machinery/telecomms/bus/preset_wyrm
	id = "Main Bus"
	network = "wyrm"
	freq_listening = list(AI_FREQ, COMM_FREQ, ENG_FREQ, ENT_FREQ, MED_FREQ, PUB_FREQ, SCI_FREQ, SUP_FREQ)
	autolinkers = list("processorWyrm", "busWyrm")
	light_color = "#4b734b"
	light_power = 1
	light_range = 4

/obj/machinery/telecomms/processor/preset_wyrm
	id = "Main Processor"
	network = "wyrm"
	autolinkers = list("processorWyrm")
	light_color = "#4b734b"
	light_power = 1
	light_range = 4

/obj/machinery/telecomms/server/presets/wyrm
	id = "Wyrm NAS"
	network = "wyrm"
	freq_listening = list(AI_FREQ, COMM_FREQ, ENG_FREQ, ENT_FREQ, MED_FREQ, PUB_FREQ, SCI_FREQ, SUP_FREQ)
	channel_tags = list(
		list(AI_FREQ, "AI Private", "#ff00ff"),
		list(COMM_FREQ, "Command", "#395a9a"),
		list(ENG_FREQ, "Engineering", "#a66300"),
		list(ENT_FREQ, "Entertainment", "#6eaa2c"),
		list(MED_FREQ, "Medical", "#008160"),
		list(PUB_FREQ, "Common", "#008000"),
		list(SCI_FREQ, "Science", "#993399"),
		list(SUP_FREQ, "Supply", "#7f6539")
	)
	autolinkers = list("serverWyrm", "busWyrm")
	light_color = "#4b734b"
	light_power = 1
	light_range = 4

/obj/machinery/telecomms/broadcaster/preset_wyrm
	id = "Wyrm Broadcaster"
	network = "wyrm"
	autolinkers = list("broadcasterWyrm")
	light_color = "#4b734b"
	light_power = 1
	light_range = 4

/obj/machinery/telecomms/receiver/preset_wyrm
	id = "Wyrm Receiver"
	network = "wyrm"
	freq_listening = list(AI_FREQ, COMM_FREQ, ENG_FREQ, ENT_FREQ, MED_FREQ, PUB_FREQ, SCI_FREQ, SUP_FREQ)
	autolinkers = list("receiverWyrm")
	light_color = "#4b734b"
	light_power = 1
	light_range = 4
