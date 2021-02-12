/decl/language/tajaran
	name = LANGUAGE_SIIK_MAAS
	desc = "The traditionally employed tongue of Ahdomai, composed of expressive yowls and chirps. Native to the Tajaran."
	speech_verb = "мурчит"
	ask_verb = "мурчит"
	exclaim_verb = "воет"
	colour = "tajaran"
	key = "2"
	flags = WHITELISTED
	syllables = list("mrr","rr","tajr","kir","raj","kii","mir","kra","ahk","nal","vah","khaz","jri","ran","darr",
	"mi","jri","dynh","manq","rhe","zar","rrhaz","kal","chur","eech","thaa","dra","jurl","mah","sanu","dra","ii'r",
	"ka","aasi","far","wa","baq","ara","qara","zir","sam","mak","hrar","nja","rir","khan","jun","dar","rik","kah",
	"hal","ket","jurl","mah","tul","cresh","azu","ragh","mro","mra","mrro","mrra")
	shorthand = "TJ"

/decl/language/tajaran/get_random_name(var/gender, name_count=2, syllable_count=4, syllable_divisor=2)
	var/new_name = ..(gender,1)
	if(prob(70))
		new_name += " [pick(list("Hadii","Kaytam","Nazkiin","Zhan-Khazan","Hharar","Njarir'Akhan","Faaira'Nrezi","Rhezar","Mi'dynh","Rrhazkal","Bayan","Al'Manq","Mi'jri","Chur'eech","Sanu'dra","Ii'rka"))]"
	else
		new_name += " [..(gender,1)]"
	return new_name

// #803b56 is color
/decl/language/tajaran/format_message(message, verb)
	return "[verb], <span class='message'><span style='color: #803b56'>\"[capitalize(filter_modify_message(message))]\"</span></span>"

/decl/language/tajaran/format_message_radio(message, verb)
	return "[verb], <span style='color: #803b56'>\"[capitalize(filter_modify_message(message))]\"</span>"

/decl/language/tajsign
	name = LANGUAGE_SIIK_TAJR
	desc = "A type of sign language mostly based on tail movements that was used during the Tajaran rebellion."
	signlang_verb = list("делает пасы хвостом", "жестикулирует хвостом", "искусно жестикулирует хвостом")
	colour = "tajaran"
	key = "l"
	flags = WHITELISTED | SIGNLANG | NO_STUTTER | NONVERBAL
	shorthand = "TS"
