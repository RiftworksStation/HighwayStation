/obj/machinery/barsign/set_sign(datum/barsign/sign)
	if(!istype(sign))
		return
	if(initial(sign.modular_icon))
		icon = initial(sign.modular_icon)
	else
		icon = initial(icon)
	. = ..()

/datum/barsign
	var/modular_icon

/datum/barsign/evahumanspace
	name = "SS220 EVA Human in Space"
	icon_state = "evahumanspace"
	desc = "Безопасность - это привелегия."
	modular_icon = 'modular_content/barsigns/icons/barsigns.dmi'

/datum/barsign/shitcur
	name = "SS220 Shitcur"
	icon_state = "shitcur"
	desc = "Невиновность ничего не доказывает."
	modular_icon = 'modular_content/barsigns/icons/barsigns.dmi'

/datum/barsign/pourndot
	name = "SS220 Pour and that's it"
	icon_state = "pourndot"
	desc = "Нальют и Точка. Тяжёлые времена приближаются."
	modular_icon = 'modular_content/barsigns/icons/barsigns.dmi'
