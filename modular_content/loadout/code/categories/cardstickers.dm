/datum/loadout_category/id_sticker
	category_name = "Наклейки"
	category_ui_icon = FA_ICON_ID_CARD
	type_to_generate = /datum/loadout_item/id_sticker

/datum/loadout_item/id_sticker
	abstract_type = /datum/loadout_item/id_sticker

/datum/loadout_item/id_sticker/on_equip_item(obj/item/equipped_item, list/item_details, mob/living/carbon/human/equipper, datum/outfit/outfit, visuals_only)
	if(visuals_only)
		return NONE
	. = ..()
	var/obj/item/card/id/advanced/card = equipper.get_item_by_slot(ITEM_SLOT_ID) // Should be there, wallet moves the card into itself later
	if(!istype(card) || card.applied_sticker)
		return NONE
	card.apply_sticker(equipper, equipped_item)

// MARK: Tier 0
/datum/loadout_item/id_sticker/id_decal_colored
	name = "Голографическая"
	item_path = /obj/item/id_sticker/colored

/datum/loadout_item/id_sticker/id_decal_donut
	name = "Пончиковая"
	item_path = /obj/item/id_sticker/donut

/datum/loadout_item/id_sticker/id_decal_paradise
	name = "Paradise"
	item_path = /obj/item/id_sticker/paradise

/datum/loadout_item/id_sticker/id_decal_ussp
	name = "СССП"
	item_path = /obj/item/id_sticker/ussp

// MARK: Tier 1
/datum/loadout_item/id_sticker/id_decal_silver
	name = "Серебрянная"
	item_path = /obj/item/id_sticker/silver

/datum/loadout_item/id_sticker/id_decal_silver_colored
	name = "Голо-Серебрянная"
	item_path = /obj/item/id_sticker/colored/silver

/datum/loadout_item/id_sticker/id_decal_business
	name = "Бизнесменская"
	item_path = /obj/item/id_sticker/business

/datum/loadout_item/id_sticker/id_decal_clown
	name = "Клоунская"
	item_path = /obj/item/id_sticker/clown

/datum/loadout_item/id_sticker/id_decal_missing
	name = "CSS"
	item_path = /obj/item/id_sticker/missing

// MARK: Tier 2
/datum/loadout_item/id_sticker/id_decal_gold_skin
	name = "Золотая"
	item_path = /obj/item/id_sticker/gold

/datum/loadout_item/id_sticker/id_decal_lifetime
	name = "Стильная"
	item_path = /obj/item/id_sticker/lifetime

/datum/loadout_item/id_sticker/id_decal_neon
	name = "Неоновая"
	item_path = /obj/item/id_sticker/neon

/datum/loadout_item/id_sticker/id_decal_neon_colored
	name = "Голо-Неоновая"
	item_path = /obj/item/id_sticker/colored/neon

/datum/loadout_item/id_sticker/id_decal_ouija
	name = "Уиджи"
	item_path = /obj/item/id_sticker/ouija

// MARK: Tier 3
/datum/loadout_item/id_sticker/id_decal_kitty
	name = "Няшная"
	item_path = /obj/item/id_sticker/kitty

/datum/loadout_item/id_sticker/id_decal_kitty_colored
	name = "Голо-Няшная"
	item_path = /obj/item/id_sticker/colored/kitty

/datum/loadout_item/id_sticker/id_decal_anime
	name = "Анимешная"
	item_path = /obj/item/id_sticker/cursedmiku

/datum/loadout_item/id_sticker/id_decal_jokerge
	name = "Jokerge"
	item_path = /obj/item/id_sticker/jokerge

/datum/loadout_item/id_sticker/id_decal_terminal
	name = "Терминал"
	animated = TRUE
	item_path = /obj/item/id_sticker/terminal

// MARK: Tier 4
/datum/loadout_item/id_sticker/id_decal_rainbow
	name = "Радужная"
	animated = TRUE
	item_path = /obj/item/id_sticker/rainbow

/datum/loadout_item/id_sticker/id_decal_space
	name = "КОСМИЧЕСКАЯ"
	animated = TRUE
	item_path = /obj/item/id_sticker/space

/datum/loadout_item/id_sticker/id_decal_snake
	name = "Бегущая"
	animated = TRUE
	item_path = /obj/item/id_sticker/colored/snake

/datum/loadout_item/id_sticker/id_decal_magic
	name = "Магическая"
	animated = TRUE
	item_path = /obj/item/id_sticker/magic

/datum/loadout_item/id_sticker/id_decal_boykisser
	name = "BoyKisser"
	animated = TRUE
	item_path = /obj/item/id_sticker/boykisser
