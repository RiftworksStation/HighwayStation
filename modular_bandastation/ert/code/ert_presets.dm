/datum/ert/non_tg/amber
	leader_role = /datum/antagonist/ert/non_tg/commander/amber
	roles = list(/datum/antagonist/ert/non_tg/security/amber, /datum/antagonist/ert/non_tg/medic/amber, /datum/antagonist/ert/non_tg/engineer/amber, /datum/antagonist/ert/non_tg/chaplain/amber, /datum/antagonist/ert/non_tg/janitor/amber, /datum/antagonist/ert/non_tg/clown/amber)
	polldesc = "Code Amber Emergency Response Team"
	code = "Amber"

/datum/ert/non_tg/red
	leader_role = /datum/antagonist/ert/non_tg/commander/red
	roles = list(/datum/antagonist/ert/non_tg/security/red, /datum/antagonist/ert/non_tg/medic/red, /datum/antagonist/ert/non_tg/engineer/red, /datum/antagonist/ert/non_tg/chaplain/red, /datum/antagonist/ert/non_tg/janitor/red, /datum/antagonist/ert/non_tg/clown/red)
	polldesc = "Code Red Emergency Response Team"
	code = "Red"

/datum/ert/non_tg/gamma
	leader_role = /datum/antagonist/ert/non_tg/commander/gamma
	roles = list(/datum/antagonist/ert/non_tg/security/gamma, /datum/antagonist/ert/non_tg/medic/gamma, /datum/antagonist/ert/non_tg/engineer/gamma, /datum/antagonist/ert/non_tg/chaplain/gamma, /datum/antagonist/ert/non_tg/janitor/gamma, /datum/antagonist/ert/non_tg/clown/gamma)
	code = "Gamma"
	polldesc = "Code Gamma Emergency Response Team"

/datum/ert/non_tg/janitor
	leader_role = /datum/antagonist/ert/non_tg/janitor/gamma
	roles = list(/datum/antagonist/ert/non_tg/janitor/red, /datum/antagonist/ert/non_tg/janitor/amber)
	polldesc = "Janitor Emergency Response Team"
	opendoors = FALSE
	rename_team = "Janitor"
	mission = "Clean up EVERYTHING."

/datum/ert/non_tg/clown
	leader_role = /datum/antagonist/ert/non_tg/clown/gamma
	roles = list(/datum/antagonist/ert/non_tg/clown/red, /datum/antagonist/ert/non_tg/clown/amber)
	polldesc = "Clown Emergency Response Team"

/datum/ert/non_tg/inquisition
	leader_role = /datum/antagonist/ert/non_tg/commander/inquisitor
	roles = list(/datum/antagonist/ert/non_tg/chaplain/inquisitor, /datum/antagonist/ert/non_tg/security/inquisitor, /datum/antagonist/ert/non_tg/medic/inquisitor)
	polldesc = "Inquisition Emergency Response Team"
	rename_team = "Inquisition"
	mission = "Destroy any traces of paranormal activity aboard the station."

// MARK: SECURITY
/datum/antagonist/ert/non_tg/security
	role = "Сотрудник службы безопасности"

/datum/antagonist/ert/non_tg/security/amber
	outfit = /datum/outfit/centcom/ert/non_tg/security/amber

/datum/antagonist/ert/non_tg/security/red
	outfit = /datum/outfit/centcom/ert/non_tg/security/red

/datum/antagonist/ert/non_tg/security/gamma
	outfit = /datum/outfit/centcom/ert/non_tg/security/gamma

/datum/antagonist/ert/non_tg/security/inquisitor
	outfit = /datum/outfit/centcom/ert/non_tg/security/inquisitor

// MARK: ENGINEER
/datum/antagonist/ert/non_tg/engineer
	role = "Инженер"
	outfit = /datum/outfit/centcom/ert/non_tg/engineer

/datum/antagonist/ert/non_tg/engineer/amber
	outfit = /datum/outfit/centcom/ert/non_tg/engineer/amber

/datum/antagonist/ert/non_tg/engineer/red
	outfit = /datum/outfit/centcom/ert/non_tg/engineer/red

/datum/antagonist/ert/non_tg/engineer/gamma
	outfit = /datum/outfit/centcom/ert/non_tg/engineer/gamma

// MARK: MEDIC
/datum/antagonist/ert/non_tg/medic
	role = "Медик"
	outfit = /datum/outfit/centcom/ert/medic

/datum/antagonist/ert/non_tg/medic/amber
	outfit = /datum/outfit/centcom/ert/non_tg/medic/amber

/datum/antagonist/ert/non_tg/medic/red
	outfit = /datum/outfit/centcom/ert/non_tg/medic/red

/datum/antagonist/ert/non_tg/medic/gamma
	outfit = /datum/outfit/centcom/ert/non_tg/medic/gamma

/datum/antagonist/ert/non_tg/medic/inquisitor
	outfit = /datum/outfit/centcom/ert/non_tg/medic/inquisitor

// MARK: COMMANDER
/datum/antagonist/ert/non_tg/commander
	role = "Командир"
	outfit = /datum/outfit/centcom/ert/non_tg/commander

/datum/antagonist/ert/non_tg/commander/amber
	outfit = /datum/outfit/centcom/ert/non_tg/commander/amber

/datum/antagonist/ert/non_tg/commander/red
	outfit = /datum/outfit/centcom/ert/non_tg/commander/red

/datum/antagonist/ert/non_tg/commander/gamma
	outfit = /datum/outfit/centcom/ert/non_tg/commander/gamma

/datum/antagonist/ert/non_tg/commander/inquisitor
	outfit = /datum/outfit/centcom/ert/non_tg/commander/inquisitor

// MARK: CHAPLAIN
/datum/antagonist/ert/non_tg/chaplain
	role = "Священник"
	outfit = /datum/outfit/centcom/ert/non_tg/chaplain

/datum/antagonist/ert/non_tg/chaplain/amber
	outfit = /datum/outfit/centcom/ert/non_tg/chaplain/amber

/datum/antagonist/ert/non_tg/chaplain/red
	outfit = /datum/outfit/centcom/ert/non_tg/chaplain/red

/datum/antagonist/ert/non_tg/chaplain/gamma
	outfit = /datum/outfit/centcom/ert/non_tg/chaplain/gamma

/datum/antagonist/ert/non_tg/chaplain/inquisitor
	outfit = /datum/outfit/centcom/ert/non_tg/chaplain/inquisitor

// MARK: JANITOR
/datum/antagonist/ert/non_tg/janitor
	role = "Уборщик"
	outfit = /datum/outfit/centcom/ert/non_tg/janitor

/datum/antagonist/ert/non_tg/janitor/amber
	outfit = /datum/outfit/centcom/ert/non_tg/janitor/amber

/datum/antagonist/ert/non_tg/janitor/red
	outfit = /datum/outfit/centcom/ert/non_tg/janitor/red

/datum/antagonist/ert/non_tg/janitor/gamma
	role = "Уборщик-специалист"
	outfit = /datum/outfit/centcom/ert/non_tg/janitor/gamma

// MARK: CLOWN
/datum/antagonist/ert/non_tg/clown
	role = "Клоун"
	outfit = /datum/outfit/centcom/ert/non_tg/clown

/datum/antagonist/ert/non_tg/clown/amber
	outfit = /datum/outfit/centcom/ert/non_tg/clown/amber

/datum/antagonist/ert/non_tg/clown/red
	outfit = /datum/outfit/centcom/ert/non_tg/clown/red

/datum/antagonist/ert/non_tg/clown/gamma
	outfit = /datum/outfit/centcom/ert/non_tg/clown/gamma
