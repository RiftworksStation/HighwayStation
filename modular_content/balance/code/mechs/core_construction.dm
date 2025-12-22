/datum/component/construction/mecha/durand
	var/obj/item/required_core = /obj/item/mecha_parts/core

/datum/component/construction/mecha/proc/core_insert_list(obj/item/core_to_insert)
	return list(
		"key" = core_to_insert,
		"action" = ITEM_DELETE,
		"back_key" = TOOL_WELDER,
		"desc" = "The external armor is welded, and the <b>[declent_ru_initial(core_to_insert::name, NOMINATIVE, core_to_insert::name)]</b> socket is open.",
		"forward_message" = "inserted [declent_ru_initial(core_to_insert::name, NOMINATIVE, core_to_insert::name)]",
		"backward_message" = "cut off external armor",
		"skip_state" = TRUE,
	)

/datum/component/construction/mecha/durand/get_outer_plating_steps()
	return ..() + list(core_insert_list(required_core))

/datum/component/construction/mecha/savannah_ivanov
	var/obj/item/required_core = /obj/item/mecha_parts/core

/datum/component/construction/mecha/savannah_ivanov/get_outer_plating_steps()
	return ..() + list(core_insert_list(required_core))

/datum/component/construction/mecha/gygax
	var/obj/item/required_core = /obj/item/mecha_parts/core

/datum/component/construction/mecha/gygax/get_outer_plating_steps()
	return ..() + list(core_insert_list(required_core))
