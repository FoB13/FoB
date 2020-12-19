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
	jam_chance = 5

/////////
// Beanbag Launcher
/////////
/obj/item/weapon/gun/projectile/shotgun/pump/beanbag
	name = "beanbag shotgun"
	desc = "Built for close quarters combat, the Hephaestus Industries KS-40 is widely regarded as a weapon of choice for repelling boarders. \
	This one appears to be modified to fire nothing but beanbags, and has an orange paintjob on the slide. Trying to fire lethals doesn't seem like a good idea."
	icon = 'icons/boh/items/shotguns.dmi'
	icon_state = "bshotgun"
	item_state = "bshotgun"
//	wielded_item_state = "cshotgun"
	origin_tech = list(TECH_COMBAT = 1, TECH_MATERIAL = 2)
	max_shells = 7
	ammo_type = /obj/item/ammo_casing/a12g/beanbag
	var/explosion_chance = 100

/obj/item/weapon/gun/projectile/shotgun/pump/beanbag/special_check()
	if(chambered && chambered.BB && prob(explosion_chance))
		var/damage = chambered.BB.get_structure_damage()
		if(istype(chambered.BB, /obj/item/projectile/bullet/pellet))
			var/obj/item/projectile/bullet/pellet/PP = chambered.BB
			damage = PP.damage*PP.pellets
		if(damage > 30)
			var/mob/living/carbon/C = loc
			if(istype(loc))
				C.visible_message("<span class='danger'>[src] explodes in [C]'s hands!</span>", "<span class='danger'>[src] explodes in your face!</span>")
				C.drop_from_inventory(src)
				for(var/zone in list(BP_L_HAND, BP_R_HAND, BP_HEAD))
					C.apply_damage(rand(10,20), def_zone=zone)
			else
				visible_message("<span class='danger'>[src] explodes!</span>")
			explosion(get_turf(src), -1, -1, 1)
			qdel(src)
			return FALSE
	return ..()
