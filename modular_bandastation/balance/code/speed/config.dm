/datum/config_entry/number/minimum_move_delay
	default = 1
	integer = FALSE

/datum/config_entry/number/minimum_move_delay/ValidateAndSet(str_val)
	. = ..()
	if(.)
		GLOB.minimum_move_delay = config_entry_value
