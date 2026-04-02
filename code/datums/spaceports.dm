/datum/spaceport
	/// The name that will be displayed while on route to this destination
	var/name = ""

	/// The message that will be sent when docking is initiated
	var/docking_message = "Attention, USCM vessel. We are launching umbilical cords and deploying a squad to investigate the nature of your distress."

	/// The allies that will be spawned by arriving at this station (only one entry chosen randomly per call)
	var/list/allies

/datum/spaceport/uscm
	name = "Mont-Blanc 41 LG Station"
	docking_message = "Attention, USS Almayer. This is Captain Pereira with the Solar Devils Battalion. We are launching umbilical cords and deploying a fireteam now."
	allies = list(
		/datum/emergency_call/solar_devils, //10 marines was overpowered compared to the other ERT's considering solar devils have much better equipment than regular marines & the UPP.
	)

/datum/spaceport/cmb
	name = "Anchorpoint Station"
	docking_message = "This is Chief Deputy Marshal Whittaker with the Colonial Marshal Bureau, Anchorpoint Station. We're investigating the nature of your distress signal. Initiate docking procedures at tower four."
	allies = list(
		/datum/emergency_call/cmb/riot_control,
		/datum/emergency_call/cmb/anchorpoint, //Marine detachment.
	)

/datum/spaceport/upp
	name = "Znoy Outpost"
	docking_message = "Attention, USCM vessel. You have encroached on UPP territory. We are launching umbilical cords and deploying a squad to investigate the nature of your distress."
	allies = list(
		/datum/emergency_call/upp/friendly,
	)

/datum/spaceport/upp/hostile //Depending on what intel and the officer in charge, the UPP would probably have different responses to a burning USCM vessel entering their territory.
	allies = list(
		/datum/emergency_call/upp/hostile,
	)

/datum/spaceport/vanguard
	name = "Irkala Station"
	docking_message = "Attention, USCM vessel. We are launching umbilical cords and deploying a squad to investigate the nature of your distress in accordance with the Military Aid Act of 2177."
	allies = list(
		/datum/emergency_call/contractors,
		/datum/emergency_call/contractors/covert,
	)

/datum/spaceport/royal_commandos
	name = "Port Yamanashi"
	docking_message = "Attention, USCM vessel. Initiate docking procedures immediately, we are deploying a squad to investigate the nature of your distress in accordance with the Military Aid Act of 2177." //i liked the idea of the almayer docking itself to a port
	allies = list(
		/datum/emergency_call/royal_marines,
	)

/datum/spaceport/clf //Any ERT regardless of friend or foe is going to be a round-end state, which is the goal of FTL.
	name = "Irkala Station" //Disguised IFF signature, or something. The station name shows up at the start of hijack so I don't want people to meta it.
	docking_message = "You are trespassing on our soveirgn territory, G.I's. expect no forgiveness."
	allies = list(
		/datum/emergency_call/clf,
	)

/datum/spaceport/pmc
	name = "Tenshoku Station"
	docking_message = "Attention, USCM vessel. Initiate docking procedures immediately, we are deploying a squad to investigate the nature of your distress in accordance with the Military Aid Act of 2177."
	allies = list(
		/datum/emergency_call/pmc,
	)
