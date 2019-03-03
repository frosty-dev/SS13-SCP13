/obj/item/weapon/storage/fancy/cigarettes/bluelady
	name = "pack of SCP-013s"
	desc = "A packet of six Blue Lady cigarettes. The SCP logo is stamped on the paper."
	icon_state = "BLpacket"
	startswith = list(/obj/item/clothing/mask/smokable/cigarette/bluelady = 6)

/obj/item/clothing/mask/smokable/cigarette/bluelady
	name = "'blue lady' cigarette"
	brand = "\improper Blue Lady"
	desc = "The words 'Blue Lady' are written on this deftly-rolled cigarette in blue ink."
	icon_state = "cigbluelady"
	type_butt = /obj/item/weapon/cigbutt/bluelady
	filling = list(/datum/reagent/tobacco/bluelady = 1)

/obj/item/weapon/cigbutt/bluelady
	icon_state = "cigbuttbluelady"

/obj/item/clothing/mask/smokable/cigarette/bluelady/Initialize()
	. = ..()
	set_extension(src, /datum/extension/appearance, /datum/extension/appearance/bluelady)

/datum/reagent/tobacco/bluelady
	name = "Blue Lady Tobacco"
	taste_description = "the memories of a forgotten time"

/datum/reagent/tobacco/bluelady/affect_blood(var/mob/living/carbon/M, var/alien, var/removed)
	if(world.time > data + ANTIDEPRESSANT_MESSAGE_DELAY)
		data = world.time
		to_chat(M, pick("<span class='notice'>You are the Lady in Blue.</span>","<span class='notice'>You remember looking in the mirror.</span>","<span class='notice'>You remember the way the blinds cast shadows on the table.</span>","<span class='notice'>You recall the way the record skipped, just a little every turn.</span>","<span class='notice'>You feel the urge to sketch yourself, before the memories slip away.</span>","<span class='notice'>A bad memory. Several days without a bump, that first time you needed more.</span>","<span class='notice'>Faces in the crowd, looking at you, but you don't recognize any of them.</span>","<span class='notice'>The spotlight flashes over your face, briefly blinding you.</span>","<span class='notice'>You can smell the rain outside the window.</span>","<span class='notice'>The squeal of cab tires, turning the corner in the city.</span>","<span class='notice'>The lights of the city at night. You were alive.</span>","<span class='notice'>For a split second, your name is on the tip of your tongue. Then it's gone.</span>"))

/datum/extension/appearance/bluelady
	expected_type = /obj/item
	appearance_handler_type = /decl/appearance_handler/bluelady
	item_equipment_proc = /decl/appearance_handler/bluelady/proc/item_equipped
	item_removal_proc = /decl/appearance_handler/bluelady/proc/item_removed

/decl/appearance_handler/bluelady
	var/static/list/appearances

/decl/appearance_handler/bluelady/proc/item_equipped(var/obj/item/item, var/mob/user, var/slot)
	if(!(slot == slot_wear_mask))
		return
	if(!ishuman(user))
		return
	if(!(istype(item, /obj/item/clothing/mask/smokable/cigarette/bluelady)))
		return
	if(user in appearance_sources)
		return

	var/mob/living/carbon/human/H = user
	if(!(istype(H.wear_mask, /obj/item/clothing/mask/smokable/cigarette/bluelady)))
		return


	var/image/I = get_image_from_bluelady(H)

	H.is_blue_lady = 1
	H.pre_scp013_name = H.name
	H.pre_scp013_real_name = H.real_name
	H.pre_scp013_species = H.species.name
	H.pre_scp013_gender = H.gender
	H.set_species("SCP-013-1")
	to_chat(H, "<span class='notice'>That cigarette was her favorite flavor.</span>")
	spawn(500)
		to_chat(H, "<span class='notice'>You can't remember what she did this morning, or the day before...</span>")
	spawn(1000)
		to_chat(H, "<span class='notice'>You remember now, looking in the mirror as you painted your lips blue.</span>")
		AddAltAppearance(H, I, GLOB.ghost_mob_list + H)
	spawn(1300)
		to_chat(H, "<span class='notice'>Briefly, she fades from your mind. You miss her already.</span>")
		RemoveAltAppearance(user)
	spawn(1500)
		to_chat(H, "<span class='notice'>You put the blue dress on, that's all you can recall. How did you get here?</span>")
		AddAltAppearance(H, I, GLOB.ghost_mob_list + H) //you now look like the blue lady to yourself, also ghosts
		H.real_name = "The Blue Lady"
	spawn(2000)
		to_chat(H, "<span class='notice'>Who were you? You try to remember in more detail...</span>")
	spawn(2100)
		to_chat(H, "<span class='notice'>You need to find out.</span>")

	if (H.gender == MALE)
		spawn(3000)
			to_chat(H, "<span class='warning'>Your body looks the way it should, but something still feels very wrong...</span>")
			H.gender = FEMALE

/decl/appearance_handler/bluelady/proc/item_removed(var/obj/item/item, var/mob/user)
	// // Blue Lady is forever.
	// if(istype(item, /obj/item/clothing/mask/smokable/cigarette/bluelady))
	// 	RemoveAltAppearance(user)

/decl/appearance_handler/bluelady/proc/get_image_from_bluelady(var/mob/living/carbon/human/H)
	var/image/I = image('icons/mob/human.dmi', icon_state = "body_f_s", loc = H)
	I.override = 1
	I.overlays += image(icon = 'icons/mob/human_face.dmi', icon_state = "hair_emo2_s")
	I.overlays += image(icon = 'icons/mob/onmob/uniform.dmi', icon_state = "lady_in_blue_s")
	I.overlays += image(icon = 'icons/mob/onmob/mask.dmi', icon_state = "ccigon")
	I.overlays += image(icon = 'icons/mob/onmob/feet.dmi', icon_state = "heels")
	return I