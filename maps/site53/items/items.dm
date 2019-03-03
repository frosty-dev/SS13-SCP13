/obj/item/weapon/storage/backpack/satchel_tox
	name = "\improper Foundation satchel"
	desc = "Useful for holding research materials. The colors on it denote it as a Foundation bag."
	icon_state = "satchel-nt"

/obj/item/weapon/storage/backpack/satchel_eng
	name = "industrial satchel"
	desc = "A tough satchel with extra pockets."
	icon_state = "satchel-eng"
	item_state_slots = list(
		slot_l_hand_str = "engiepack",
		slot_r_hand_str = "engiepack")

/obj/item/weapon/storage/backpack/satchel_sec
	name = "security satchel"
	desc = "A robust satchel for security related needs."
	icon_state = "satchel-sec"
	item_state_slots = list(
		slot_l_hand_str = "securitypack",
		slot_r_hand_str = "securitypack",
		)

/obj/item/weapon/storage/backpack/satchel_hyd
	name = "hydroponics satchel"
	desc = "A green satchel for plant related work."
	icon_state = "satchel_hyd"

/obj/item/clothing/head/helmet/solgov/command
	name = "command helmet"
	desc = "A helmet with 'SOL CENTRAL GOVERNMENT' printed on the back in gold lettering."
	icon_state = "helmet_command"
	icon = 'maps/torch/icons/obj/solgov-head.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/solgov-head.dmi')
	starting_accessories = null

/obj/item/weapon/gun/projectile/sec/sec
	desc = "A SCPF Mk3 Tactical, reminiscent of a H&K USP. This weapon, patented and produced by the SCP Foundation, is the main service firearm for it's members. Chambered in .45 rounds."
	name = "Mk3 Tactical"
	icon_state = "usp"
	accuracy = 0

/obj/item/weapon/gun/projectile/sec/sec/on_update_icon()
	..()
	if(ammo_magazine && ammo_magazine.stored_ammo.len)
		icon_state = "usp"
	else
		icon_state = "usp-e"

/obj/item/clothing/gloves/tactical/scp
	desc = "These grey tactical gloves are made from a durable synthetic, and have hardened knuckles."
	name = "tactical gloves"
	icon_state = "G_Gloves_IH"
	item_state = "G_Gloves_OM"
	force = 5
	siemens_coefficient = 0.50
	permeability_coefficient = 0.05
	armor = list(melee = 30, bullet = 10, laser = 10, energy = 15, bomb = 20, bio = 0, rad = 0)

/obj/item/weapon/storage/box/bloodtypes
	name = "box of bloodtype patches"
	desc = "A box full of bloodtype patches for on plate carriers."
	startswith = list(
	/obj/item/clothing/accessory/armor/tag/oneg,
	/obj/item/clothing/accessory/armor/tag/opos,
	/obj/item/clothing/accessory/armor/tag/apos,
	/obj/item/clothing/accessory/armor/tag/aneg,
	/obj/item/clothing/accessory/armor/tag/bpos,
	/obj/item/clothing/accessory/armor/tag/bneg,
	/obj/item/clothing/accessory/armor/tag/abpos,
	/obj/item/clothing/accessory/armor/tag/abneg
	)

/obj/item/weapon/storage/box/mtf/pelletammo
	name = "pellet ammunition"
	desc = "Contains pellet ammunition for a shotgun."
	startswith = list(/obj/item/ammo_casing/shotgun/pellet = 7)

/obj/item/weapon/storage/box/mtf/empammo
	name = "emp ammunition"
	desc = "Contains EMP ammunition for a shotgun."
	startswith = list(/obj/item/ammo_casing/shotgun/emp = 7)

/obj/item/weapon/gun/projectile/shotgun/tactical
	name = "combat shotgun"
	desc = "A fully automatic shotgun, This one has a orange stripe."
	icon_state = "tac_shotgun"
	item_state = "cshotgun"
	load_method = SINGLE_CASING|SPEEDLOADER
	max_shells = 7
	w_class = ITEM_SIZE_HUGE
	force = 10
	obj_flags =  OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BACK
	caliber = "shotgun"
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 1)
	ammo_type = /obj/item/ammo_casing/shotgun
	one_hand_penalty = 2
	wielded_item_state = "gun_wielded"

	burst_delay = 0

/obj/item/weapon/paper/dclass_orientation
	name = "Class-D Orientation Letter"
	info = "<small>Greetings,<br><br>On behalf of all staff within The Foundation, we welcome you to Site-19. You have chosen, or been chosen for the honor of joining the Foundation Rehabilitation Program. During your thirty day stay within this facility, you will be known as Class-D personnel, and be given a unique numerical designation for ease of access, which has been printed on your new ID card. <br><br>Over the course of your stay here, you will undergo various programs to ensure that you are ready to re-enter the world again. You will be given the opportunity to select a job within your block, in order to assist your fellow D-Class. From working the kitchen, to digging out objects within our mining area. On top of this, you may be selected for various medical or research tests to assist in our projects. What are those projects? Unfortunately, we can't tell you that.<br><br>Given that you are cooperative with our staff for the entirety of your stay here, you will be released back into the world, and have your criminal record erased completely. With that being said, we hope that you enjoy your stay here.<br><br>Sincerely,<br>The Administrator</small>"
	desc = "A laminated piece of paper given to D-Class personnel upon their arrival."

/obj/item/modular_computer/console/preset/mtf/commsofficer/install_default_hardware()
	..()
	nano_printer = new/obj/item/weapon/computer_hardware/nano_printer(src)
	card_slot = new/obj/item/weapon/computer_hardware/card_slot(src)

/obj/item/modular_computer/console/preset/mtf/commsofficer/install_default_programs()
	..()
	hard_drive.store_file(new/datum/computer_file/program/chatclient())
	hard_drive.store_file(new/datum/computer_file/program/comm())
	hard_drive.store_file(new/datum/computer_file/program/camera_monitor())
	hard_drive.store_file(new/datum/computer_file/program/email_client())

/obj/item/modular_computer/console/preset/mtf/dassignments/install_default_hardware()
	..()
	nano_printer = new/obj/item/weapon/computer_hardware/nano_printer(src)
	card_slot = new/obj/item/weapon/computer_hardware/card_slot(src)

/obj/item/modular_computer/console/preset/mtf/dassignments/install_default_programs()
	..()
	hard_drive.store_file(new/datum/computer_file/program/chatclient())
	hard_drive.store_file(new/datum/computer_file/program/card_mod())
	hard_drive.store_file(new/datum/computer_file/program/camera_monitor())

/obj/item/modular_computer/console/preset/mtf/camera/install_default_programs()
	..()
	hard_drive.store_file(new/datum/computer_file/program/camera_monitor())
