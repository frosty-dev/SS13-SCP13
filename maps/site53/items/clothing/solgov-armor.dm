/obj/item/clothing/suit/armor/vest/solgov
	name = "\improper Sol Central Government armored vest"
	desc = "A synthetic armor vest. This one is marked with the crest of the Sol Central Government."
	icon_state = "solvest"
	icon = 'maps/torch/icons/obj/solgov-suit.dmi'
	item_icons = list(slot_wear_suit_str = 'maps/torch/icons/mob/solgov-suit.dmi')

/obj/item/clothing/suit/storage/vest/solgov
	name = "\improper Sol Central Government heavy armored vest"
	desc = "A synthetic armor vest with PEACEKEEPER printed in distinctive blue lettering on the chest. This one has added webbing and ballistic plates."
	icon_state = "solwebvest"
	icon = 'maps/torch/icons/obj/solgov-suit.dmi'
	item_icons = list(slot_wear_suit_str = 'maps/torch/icons/mob/solgov-suit.dmi')

/obj/item/clothing/suit/storage/vest/solgov/security
	name = "master at arms heavy armored vest"
	desc = "A synthetic armor vest with MASTER AT ARMS printed in silver lettering on the chest. This one has added webbing and ballistic plates."
	icon_state = "secwebvest"

/obj/item/clothing/suit/storage/vest/solgov/command
	name = "command heavy armored vest"
	desc = "A synthetic armor vest with SOL CENTRAL GOVERNMENT printed in gold lettering on the chest. This one has added webbing and ballistic plates."
	icon_state = "comwebvest"

/obj/item/clothing/suit/armor/pcarrier/blue/sol
	name = "peacekeeper plate carrier"
	desc = "A lightweight plate carrier vest in SCG Peacekeeper colors. It can be equipped with armor plates, but provides no protection of its own."
	starting_accessories = list(/obj/item/clothing/accessory/armorplate/medium, /obj/item/clothing/accessory/storage/pouches/blue, /obj/item/clothing/accessory/armguards/blue, /obj/item/clothing/accessory/armor/tag/solgov)

/obj/item/clothing/suit/armor/pcarrier/light/sol
	starting_accessories = list(/obj/item/clothing/accessory/armorplate, /obj/item/clothing/accessory/armor/tag/solgov)

/obj/item/clothing/suit/armor/pcarrier/medium/sol
	starting_accessories = list(/obj/item/clothing/accessory/armorplate/medium, /obj/item/clothing/accessory/storage/pouches, /obj/item/clothing/accessory/armor/tag/solgov)

/obj/item/clothing/suit/armor/pcarrier/medium/security
	starting_accessories = list(/obj/item/clothing/accessory/armorplate/medium, /obj/item/clothing/accessory/storage/pouches, /obj/item/clothing/accessory/armor/tag/solgov/sec)

/obj/item/clothing/suit/armor/pcarrier/medium/command
	starting_accessories = list(/obj/item/clothing/accessory/armorplate/medium, /obj/item/clothing/accessory/storage/pouches, /obj/item/clothing/accessory/armor/tag/solgov/com)

/obj/item/clothing/suit/armor/pcarrier/medium/command/security
	starting_accessories = list(/obj/item/clothing/accessory/armorplate/medium, /obj/item/clothing/accessory/storage/pouches, /obj/item/clothing/accessory/armor/tag/solgov/com/sec)

/obj/item/clothing/head/helmet/chaos
	name = "tactical hazmat helmet"
	desc = "An armored hazmat helmet. Has a distinct orange hue."
	icon_state = "tac_helmet"
	armor = list(melee = 80, bullet = 60, laser = 50,energy = 25, bomb = 50, bio = 100, rad = 60)
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	item_flags = ITEM_FLAG_THICKMATERIAL|ITEM_FLAG_AIRTIGHT
	body_parts_covered = HEAD|FACE|EYES
	siemens_coefficient = 0.5
	permeability_coefficient = 0

/obj/item/clothing/suit/armor/pcarrier/scp/ntf
	starting_accessories = list(/obj/item/clothing/accessory/armorplate/merc, /obj/item/clothing/accessory/storage/pouches/large, /obj/item/clothing/accessory/legguards/merc, /obj/item/clothing/accessory/armguards/merc)

/obj/item/clothing/suit/armor/chaos
	name = "tactical hazmat suit"
	desc = "An armored hazmat suit with a distinct orange appearance."
	icon_state = "tac_hazmat"
	item_state = "tac_hazmat"
	permeability_coefficient = 0
	gas_transfer_coefficient = 0
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	armor = list(melee = 80, bullet = 65, laser = 65, energy = 15, bomb = 80, bio = 100, rad = 60)

