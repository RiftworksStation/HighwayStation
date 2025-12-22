/datum/loadout_item
	var/donator_level = BASIC_DONATOR_LEVEL
	var/cost = 1
	/// Hides the entry from preferences menu.
	var/hidden = FALSE

/datum/loadout_item/to_ui_data()
	. = ..()
	.["cost"] = cost
	.["tier"] = donator_level

/datum/loadout_item/proc/is_available(client/user)
	if(hidden)
		to_chat(user, span_boldnotice("Предмет [name] более недоступен для выбора."))
		return FALSE
	/*
	if(user.get_donator_level() < donator_level)
		to_chat(user, span_boldnotice("Ваш уровень подписки ([user.donator_level]) недостаточен для [name] с уровнем [donator_level]."))
		return FALSE
	*/
	return TRUE

/datum/loadout_item/New(category)
	donator_level = BASIC_DONATOR_LEVEL
	. = ..()
