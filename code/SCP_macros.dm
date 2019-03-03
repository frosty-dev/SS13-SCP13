#define isscp106(A) istype(A, /mob/living/carbon/human/scp106)

#define isscp049(A) istype(A, /mob/living/carbon/human/scp049)

#define isscp049_1(A) (istype(A, /mob/living/carbon/human) && istype(A:species, /datum/species/scp049_1))

#define isscp999(A) istype(A, /mob/living/simple_animal/scp_999)

#define isscp131(A) istype(A, /mob/living/simple_animal/scp_131)

#define isscp529(A) istype(A, /mob/living/simple_animal/cat/fluff/SCP529)

#define isscp173(A) istype(A, /mob/living/scp_173)

#define isstructure(A) istype(A, /obj/structure)

#define ismachinery(A) istype(A, /obj/machinery)

#define isdatum(A) istype(A, /datum)

#define isscp106_vulnerable(A) !(istype(A, /obj/item/organ/internal/brain) || istype(A, /obj/item/organ/internal/heart))