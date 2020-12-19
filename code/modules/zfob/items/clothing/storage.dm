/obj/item/clothing/accessory/storage/bandolier
	name = "shell bandolier"
	desc = "A belt designed to hold shotgun shells."
	icon_state = "bandolier"

/obj/item/clothing/accessory/storage/bandolier/Initialize()
	..()
	hold.max_storage_space = ITEMSIZE_COST_SMALL * 6
	hold.can_hold = list(/obj/item/ammo_casing/a12g/beanbag)
