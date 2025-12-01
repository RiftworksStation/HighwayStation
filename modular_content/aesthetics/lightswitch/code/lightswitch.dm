/obj/machinery/light_switch
	icon = 'modular_content/aesthetics/lightswitch/icons/lightswitch.dmi'

/obj/machinery/light_switch/interact(mob/user)
	. = ..()
	playsound(src, 'modular_content/aesthetics/lightswitch/sound/lightswitch.ogg', 100, 1)
