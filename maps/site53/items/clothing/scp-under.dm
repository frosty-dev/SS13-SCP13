/obj/item/clothing/under/scp/whiteuniform
	name = "white uniform"
	desc = "A sterile white uniform."
	icon_state = "white"

/obj/item/clothing/under/scp/greyuniform
	name = "grey uniform"
	desc = "A dull grey uniform."
	icon_state = "grey"

/obj/item/clothing/under/scp/suittie
	name = "suit and tie"
	desc = "A rather sterile looking suit and tie."
	icon_state = "suit"

/obj/item/clothing/under/scp/dclass
	name = "D-Class uniform"
	desc = "A bright orange jumpsuit, indicative of Class D personnel."
	icon_state = "d"

/obj/item/clothing/under/ci
	name = "tactical sweatshirt"
	desc = "A white tactical shirt for tactical operations."
	icon_state = "tac"
	has_sensor = 0
	armor = list(melee = 10, bullet = 10, laser = 10,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9

/obj/item/clothing/under/rank/guard
	desc = "A durable uniform worn by Foundation corporate security."
	name = "\improper Foundation security uniform"
	icon_state = "ntguard"
	item_state = "r_suit"
	worn_state = "ntguard"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9
	item_icons = list(slot_w_uniform_str = 'icons/mob/onmob/nanotrasen.dmi')
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/onmob/Unathi/nanotrasen.dmi',
		)

/obj/item/clothing/under/rank/scientist
	name = "\improper Foundation polo and pants"
	desc = "A fashionable polo and pair of trousers made from patented biohazard-resistant synthetic fabrics. The colors denote the wearer as a member of the Foundation."
	icon_state = "ntsmock"
	item_state = "w_suit"
	worn_state = "ntsmock"
	permeability_coefficient = 0.50
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 10, bio = 0, rad = 0)
	item_icons = list(slot_w_uniform_str = 'icons/mob/onmob/nanotrasen.dmi')
	starting_accessories = list(/obj/item/clothing/accessory/nt_tunic)
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/onmob/Unathi/nanotrasen.dmi',
		)

/obj/item/clothing/under/rank/scientist/executive
	name = "\improper Foundation executive polo and pants"
	desc = "A fashionable polo and pair of trousers made from expensive biohazard-resistant fabrics. The colors denote the wearer as a member of the Foundation's higher-ups."
	icon_state = "ntsmockexec"
	worn_state = "ntsmockexec"
	starting_accessories = list(/obj/item/clothing/accessory/nt_tunic/exec)

/obj/item/clothing/under/rank/ntwork
	name = "\improper Foundation coveralls"
	desc = "A pair of beige coveralls made out of a strong, canvas-like material. The coloring on the fringes denotes it as a Foundation-branded suit, typically given to their more blue-collared employees."
	icon_state = "ntwork"
	item_state = "lb_suit"
	worn_state = "ntwork"
	armor = list(melee = 5, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 5, rad = 0)
	item_icons = list(slot_w_uniform_str = 'icons/mob/onmob/nanotrasen.dmi')
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/onmob/Unathi/nanotrasen.dmi',
		)

/obj/item/clothing/under/rank/ntpilot
	name = "\improper Foundation flightsuit"
	desc = "A sleek dark red Foundation flightsuit. It proudly sports three different patches with the Foundation logo on it, as well as several unnecessary looking flaps and pockets for effect."
	icon_state = "ntpilot"
	item_state = "r_suit"
	worn_state = "ntpilot"
	item_icons = list(slot_w_uniform_str = 'icons/mob/onmob/nanotrasen.dmi')
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/onmob/Unathi/nanotrasen.dmi',
		)

/obj/item/clothing/under/suit_jacket/nt
	name = "\improper Foundation executive suit"
	desc = "A suit that the Foundation gives to its executives."
	icon_state = "ntsuit"
	item_state = "bl_suit"
	worn_state = "ntsuit"
	item_icons = list(slot_w_uniform_str = 'icons/mob/onmob/nanotrasen.dmi')
	starting_accessories = list(/obj/item/clothing/accessory/toggleable/nanotrasen_jacket, /obj/item/clothing/accessory/nt)
	sprite_sheets = list(
		SPECIES_UNATHI = 'icons/mob/onmob/Unathi/nanotrasen.dmi',
		)

/obj/item/clothing/under/scp/utility
	desc = "A dark black uniform. This one seems to be without department insignia. On the back, in silver lettering, are the words 'SCP FOUNDATION'."
	name = "utility uniform"
	icon = 'maps/torch/icons/obj/solgov-under.dmi'
	item_icons = list(slot_w_uniform_str = 'maps/torch/icons/mob/solgov-under.dmi')
	icon_state = "scpuniform"
	worn_state = "uniform"

/obj/item/clothing/under/scp/utility/security
	desc = "A dark black uniform. This one seems to be of the Security department. This uniform is issued to ranked personnel lower than Lieutenant. On the back, in silver lettering, are the words 'SCP FOUNDATION'."
	name = "security uniform"
	icon_state = "scpuniform"
	worn_state = "uniform_s"

/obj/item/clothing/under/scp/utility/security/zc
	desc = "A dark black uniform. This one seems to be of the Security department. This uniform is issued to ranked personnel of Lieutenant. On the back, in silver lettering, are the words 'SCP FOUNDATION'."
	name = "zone commander uniform"
	icon_state = "scpuniform"
	worn_state = "uniform_zc"

/obj/item/clothing/under/scp/utility/security/gc
	desc = "A dark black uniform. This one seems to be of the Security department. This uniform is issued to ranked personnel above Lieutenant. On the back, in silver lettering, are the words 'SCP FOUNDATION'."
	name = "guard commander uniform"
	icon_state = "scpuniform"
	worn_state = "uniform_gc"

/obj/item/clothing/under/scp/utility/medical
	desc = "A dark black uniform. This one seems to be of the Medical department. This uniform is issued regardless of rank. On the back, in silver lettering, are the words 'SCP FOUNDATION'."
	name = "medical uniform"
	icon_state = "scpuniform"
	worn_state = "uniform_m"

/obj/item/clothing/under/scp/utility/engineering
	desc = "A dark black uniform. This one seems to be of the Engineering department. This uniform is issued regardless of rank. On the back, in silver lettering, are the words 'SCP FOUNDATION'."
	name = "engineering uniform"
	icon_state = "scpuniform"
	worn_state = "uniform_e"

/obj/item/clothing/under/scp/utility/logistics
	desc = "A dark gray work uniform marked clearly with the Foundation symbol."
	name = "logistics specialist uniform"
	icon_state = "scpuniform"
	worn_state = "Uniform_LS"

/obj/item/clothing/under/scp/utility/logistics/officer
	desc = "A dark gray work uniform marked clearly with the Foundation symbol."
	name = "logistics officer uniform"
	icon_state = "scpuniform"
	worn_state = "Uniform_LO"

/obj/item/clothing/under/scp/utility/communications/tech
	desc = "A dark gray work uniform marked clearly with the Foundation symbol."
	name = "communications technician uniform"
	icon_state = "scpuniform"
	worn_state = "Uniform_CT"

// /obj/item/clothing/under/scp/foundation_service_m
// 	name = "service uniform"
// 	desc = "A light grey uniform. It appears to be a Class B Service Dress uniform, however refitted and recolored to match the Foundation. This one appears to have a stylish pair of trousers."
// 	item_state = "service_co"
// 	icon_state = "service_co"
// 	worn_state = "service_co"
// 	rolled_sleeves = 0

// /obj/item/clothing/under/scp/foundation_service_f
// 	name = "service skirt"
// 	desc = "A light grey uniform. It appears to be a Class B Service Dress uniform, however refitted and recolored to match the Foundation. This one appears to have a skirt."
// 	item_state = "fservice_co"
// 	icon_state = "fservice_co"
// 	worn_state = "fservice_co"
// 	rolled_sleeves = 0

// /obj/item/clothing/under/scp/foundation_work
// 	name = "work uniform"
// 	desc = "A dark gray work uniform marked clearly with the Foundation symbol."
// 	item_state = "Uniform_CT_s"
// 	icon_state = "Uniform_CT_s"
// 	worn_state = "Uniform_CT_s"

// /obj/item/clothing/under/scp/foundation_work_lo
// 	name = "logistics officer's work uniform"
// 	desc = "A dark gray work uniform marked clearly with the Foundation symbol."
// 	icon_state = "Uniform_LO_s"
// 	item_state = "Uniform_LO_s"
// 	worn_state = "Uniform_LO_s"

// /obj/item/clothing/under/scp/foundation_work_ls
// 	name = "logistics specialist's work uniform"
// 	desc = "A dark gray work uniform marked clearly with the Foundation symbol."
// 	icon_state = "Uniform_LS_s"
// 	item_state = "Uniform_LS_s"
// 	worn_state = "Uniform_LS_s"

/obj/item/clothing/under/scp/utility/communications/officer
	desc = "A light grey uniform. It appears to be a Class B Service Dress uniform, however refitted and recolored to match the Foundation. This one appears to have a stylish pair of trousers."
	name = "communications officer uniform"
	icon_state = "communiform_m"
	worn_state = "com_uniform_m"

/obj/item/clothing/under/scp/utility/communications/officerfem
	desc = "A light grey uniform. It appears to be a Class B Service Dress uniform, however refitted and recolored to match the Foundation. This one appears to have a skirt."
	name = "communications officer uniform"
	icon_state = "communiform_f"
	worn_state = "com_uniform_f"
	rolled_sleeves = 0