/////////
// Magazines for ballistic weaponry.
/////////

/////////
//NTSidearm
/////////
/obj/item/ammo_magazine/nt45
	name = "NT magazine (.45)"
	desc = "A magazine with a bold 'NT' stamp on the side. It appears to have special notches to permit loading in a small selection of firearms."
	icon_state = "45"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/nt45
	matter = list(DEFAULT_WALL_MATERIAL = 525) //metal costs are very roughly based around 1 .45 casing = 75 metal
	caliber = ".45"
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_magazine/nt45/empty
	initial_ammo = 0

/obj/item/ammo_magazine/nt45/rubber
	name = "NT magazine (.45-R)"
	ammo_type = /obj/item/ammo_casing/nt45/rubber

/obj/item/ammo_magazine/nt45/hp
	name = "NT magazine (.45-HP)"
	ammo_type = /obj/item/ammo_casing/nt45

//casings
/obj/item/ammo_casing/nt45
	desc = "A .45 bullet casing."
	caliber = ".45"
	projectile_type = /obj/item/projectile/bullet/pistol/nt
	matter = list(DEFAULT_WALL_MATERIAL = 210)

/obj/item/ammo_casing/nt45/rubber
	desc = "A .45 rubber bullet casing."
	caliber = ".45"
	projectile_type = /obj/item/projectile/bullet/pistol/nt/rubber
	matter = list(DEFAULT_WALL_MATERIAL = 150)

/obj/item/ammo_casing/nt45/hp
	desc = "A .45 hollow point bullet casing."
	caliber = ".45"
	projectile_type = /obj/item/projectile/bullet/pistol/nt/hp
	matter = list(DEFAULT_WALL_MATERIAL = 150)

//base projectile
/obj/item/projectile/bullet/pistol/nt
	fire_sound = 'sound/weapons/gunshot3.ogg'
	damage = 25
//less-lethal
/obj/item/projectile/bullet/pistol/nt/rubber
	damage = 5
	agony = 40
	embed_chance = 0
	sharp = 0
	check_armour = "melee"
//hp
/obj/item/projectile/bullet/pistol/nt/hp
	damage = 45
	armor_penetration = -75