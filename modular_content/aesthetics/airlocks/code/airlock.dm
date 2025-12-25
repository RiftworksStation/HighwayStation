/obj/machinery/door/airlock
	icon = 'modular_content/aesthetics/airlocks/icons/station/public.dmi'
	overlays_file = 'modular_content/aesthetics/airlocks/icons/station/overlays.dmi'
	note_overlay_file = 'modular_content/aesthetics/airlocks/icons/station/overlays.dmi'

	doorOpen = 'modular_content/aesthetics/airlocks/sound/open.ogg'
	doorClose = 'modular_content/aesthetics/airlocks/sound/close.ogg'
	boltUp = 'modular_content/aesthetics/airlocks/sound/bolts_up.ogg'
	boltDown = 'modular_content/aesthetics/airlocks/sound/bolts_down.ogg'
	var/has_open_lights = TRUE

/obj/machinery/door/airlock/update_overlays()
	. = ..()
	if(!has_open_lights || !feedback || !hasPower())
		return
	var/light_state
	switch(airlock_state)
		if(AIRLOCK_CLOSED)
			if(!locked && !emergency && !has_active_reta_access())
				light_state = "poweron"
		if(AIRLOCK_OPEN)
			if(locked)
				light_state = "bolts_open"
			else if(emergency)
				light_state = "emergency_open"
			else if(has_active_reta_access())
				light_state = "reta_open"
			else
				light_state = "poweron_open"
	if(!light_state)
		return
	. += get_airlock_overlay("lights_[light_state]", overlays_file, src, em_block = FALSE)

/obj/machinery/door/airlock/highsecurity
	has_open_lights = FALSE
