/////////
// Ballistic weaponry relating to whatever.
/////////

//Handguns/Sidearms
/obj/item/weapon/gun/projectile/sec/ntsidearm
	desc = "This is a cheap sidearm produced by a NanoTrasen subsidiary. It's chambered in .45 and takes standardised magazines."
	description_fluff = "This firearm has a plastic frame and rattles like hell when you shoot it - but at least it won't explode in your hands. Probably. \
	- On the underside of the firearm is a stamp reading: 'NT Security'."
	magazine_type = /obj/item/ammo_magazine/nt45/rubber
	allowed_magazines = list(/obj/item/ammo_magazine/nt45)
	caliber = ".45"
	load_method = MAGAZINE
	jam_chance = 10