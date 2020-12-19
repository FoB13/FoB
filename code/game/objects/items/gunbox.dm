/obj/item/gunbox
	name = "detective's gun box"
	desc = "A secure box containing a Detective's sidearm."
	icon = 'icons/obj/storage.dmi'
	icon_state = "gunbox"
	w_class = ITEMSIZE_HUGE

/obj/item/gunbox/attack_self(mob/living/user)
	var/list/options = list()
	options[".45 Pistol"] = list(/obj/item/weapon/gun/projectile/colt/detective, /obj/item/ammo_magazine/m45/rubber, /obj/item/ammo_magazine/m45/rubber)
	options[".45 Revolver"] = list(/obj/item/weapon/gun/projectile/revolver/detective45, /obj/item/ammo_magazine/s45/rubber, /obj/item/ammo_magazine/s45/rubber)
	var/choice = input(user,"Would you prefer a pistol or a revolver?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn) // Spawn all the things, the gun and the ammo.
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun))
				to_chat(user, "You have chosen \the [AM]. Say hello to your new friend.")
		qdel(src)

/////////
// Sec Box
/////////
/obj/item/secbox
	name = "equipment box"
	desc = "A secure box containing a sidearm and standard issue equipment."
	icon = 'icons/obj/storage.dmi'
	icon_state = "gunbox"
	w_class = ITEMSIZE_HUGE

/obj/item/secbox/attack_self(mob/living/user)
	var/list/options = list()
	options["Ballistic"] = list(/obj/item/weapon/gun/projectile/sec/ntsidearm, /obj/item/ammo_magazine/nt45/hp, /obj/item/weapon/gun/projectile/shotgun/pump/beanbag)
	options["Energy"] = list(/obj/item/weapon/gun/energy/gun/sec, /obj/item/weapon/cell/device/weapon)
	var/choice = input(user,"Would you prefer a ballistic or energy kit?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn) // Spawn all the things, the gun and the ammo.
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun))
				to_chat(user, "You have chosen something that probably has more value than your life.")
		qdel(src)