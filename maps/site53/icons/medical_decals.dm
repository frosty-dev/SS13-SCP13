/obj/effect/decal/medical_decals
	icon = 'maps/site53/icons/medical_decals.dmi'
	layer = TURF_LAYER

/obj/effect/decal/medical_decals/New()
	. = ..()

	loc.overlays += src
