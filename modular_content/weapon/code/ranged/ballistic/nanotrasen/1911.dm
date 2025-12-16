/obj/item/gun/ballistic/automatic/pistol/m1911
	desc = "Классический пистолет калибра .45 с небольшой емкостью магазина."
	icon = 'modular_content/weapon/icons/ranged/ballistic40x32.dmi'
	recoil = 0.5

/obj/item/gun/ballistic/automatic/pistol/m1911/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/reskinable_item, /datum/atom_skin/m1911)

/datum/atom_skin/m1911
	abstract_type = /datum/atom_skin/m1911
	change_inhand_icon_state = TRUE
	change_base_icon_state = TRUE

/datum/atom_skin/m1911/default
	preview_name = "Default"
	new_icon_state = "m1911"

/datum/atom_skin/m1911/blue
	preview_name = "Blue"
	new_icon_state = "m1911blue"

/obj/item/gun/ballistic/automatic/pistol/m1911/chimpgun
	desc = "Для обезьяны-мафиози, которая всегда в движении. Использует патроны калибра .45 и имеет характерный запах бананов."
	icon_state = "m1911gold"
	recoil = 0.1

/obj/item/gun/ballistic/automatic/pistol/m1911/gold
	name = "gold trimmed m1911"
	desc = parent_type::desc + " Теперь отделанный золотом."
	icon_state = "m1911gold"

/obj/item/gun/ballistic/automatic/pistol/m1911/gold/Initialize(mapload)
	. = ..()
	var/list/datum/component/reskinable_components = GetComponents(/datum/component/reskinable_item)
	for(var/datum/component/to_delete in reskinable_components)
		qdel(to_delete)
	AddComponent(/datum/component/reskinable_item, /datum/atom_skin/m1911_gold)

/datum/atom_skin/m1911_gold
	abstract_type = /datum/atom_skin/m1911_gold
	change_inhand_icon_state = TRUE
	change_base_icon_state = TRUE

/datum/atom_skin/m1911_gold/default
	preview_name = "Default"
	new_icon_state = "m1911gold"

/datum/atom_skin/m1911_gold/blue
	preview_name = "Blue"
	new_icon_state = "m1911gold_blue"

/obj/item/gun/ballistic/automatic/pistol/m1911/m45a5
	name = "M45A5 'Rowland'"
	desc = "Модернизированная версия легендарного M1911 в калибре .456 Magnum, в настоящее время широко распространенная среди высокопоставленных сотрудников Нанотрейзен."
	icon_state = "m45a5"
	accepted_magazine_type = /obj/item/ammo_box/magazine/m45a5
	recoil = 1
