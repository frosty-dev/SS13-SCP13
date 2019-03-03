/obj/item/weapon/reagent_containers/pill/scp500
	name = "SCP-500"
	desc = "A pill supposedly curing everything."
	icon_state = "pill9"

/obj/item/weapon/reagent_containers/pill/scp500/New()
	..()
	reagents.add_reagent(/datum/reagent/adminordrazine, 50)

/obj/item/weapon/storage/pill_bottle/scp500
	name = "bottle of pills"
	desc = "SCP-500. Supposedly cures everything."

/obj/item/weapon/storage/pill_bottle/scp500/New()
	..()
	new /obj/item/weapon/reagent_containers/pill/scp500( src )
	new /obj/item/weapon/reagent_containers/pill/scp500( src )
	new /obj/item/weapon/reagent_containers/pill/scp500( src )
	new /obj/item/weapon/reagent_containers/pill/scp500( src )
	new /obj/item/weapon/reagent_containers/pill/scp500( src )
	new /obj/item/weapon/reagent_containers/pill/scp500( src )
	new /obj/item/weapon/reagent_containers/pill/scp500( src )
