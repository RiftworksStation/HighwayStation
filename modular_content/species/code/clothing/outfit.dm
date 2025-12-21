/datum/outfit/job/pre_equip(mob/living/carbon/human/user, visuals_only)
	. = ..()
	if(!(user.bodyshape & BODYSHAPE_DIGITIGRADE))
		return
	if(!shoes)
		return
	var/obj/item/clothing/shoes/shoes_path = shoes
	if(!(shoes_path::supports_variations_flags & DIGITIGRADE_VARIATIONS))
		shoes = /obj/item/clothing/shoes/sneakers/black
