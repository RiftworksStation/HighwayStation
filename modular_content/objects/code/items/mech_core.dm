/obj/item/mecha_parts/core
	name = "mech power core"
	icon = 'modular_content/objects/icons/obj/items/mech_core.dmi'
	icon_state = "mech_core"
	desc = "Сложный элемент электроники, используемый для регулирования большого количества энергии, потребляемой чувствительными компонентами боевого меха."
	w_class = WEIGHT_CLASS_SMALL

/datum/supply_pack/science/mechcore
	name = "Mech Power Core Crate"
	desc = "Набор силовых ядер для создания мехов"
	cost = CARGO_CRATE_VALUE * 12
	access = ACCESS_ROBOTICS
	access_view = ACCESS_ROBOTICS
	contains = list(/obj/item/mecha_parts/core = 2)
	crate_name = "mech power core crate"
	crate_type = /obj/structure/closet/crate/secure/science/robo
