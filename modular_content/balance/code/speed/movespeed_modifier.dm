GLOBAL_VAR_INIT(minimum_move_delay, /datum/config_entry/number/minimum_move_delay::default)

/proc/modified_move_delay(move_delay, ignore_zero = FALSE, cap_speed = FALSE)
	if(move_delay == 0 && !ignore_zero)
		. = round(max(RP_SPEED - TG_SPEED, 0) * TG_SPEED, 0.01)
	else
		. = round(RP_SPEED / TG_SPEED * move_delay, 0.01)

	if(cap_speed)
		return max(., GLOB.minimum_move_delay)

	return .

/datum/movespeed_modifier/proc/get_rp_speed()
	return modified_move_delay(multiplicative_slowdown, ignore_zero = TRUE)

/datum/movespeed_modifier/config_walk_run/get_rp_speed()
	return multiplicative_slowdown
