#define MODULAR_ICON_PATH 'modular_content/security_levels/icons/status_display.dmi'

/obj/machinery/status_display
	var/modular_icon = MODULAR_ICON_PATH
	var/alert_icon

/obj/machinery/status_display/Initialize(mapload)
	alert_icon = icon
	. = ..()

/obj/machinery/status_display/set_picture(state)
	var/static/list/modular_icon_states = icon_states(icon(MODULAR_ICON_PATH))
	alert_icon = (state in modular_icon_states) ? modular_icon : icon
	. = ..()

#undef MODULAR_ICON_PATH
