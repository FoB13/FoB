/////////
// Everything energy related.
/////////

//Handguns/Sidearms
/obj/item/weapon/gun/energy/gun/sec
	name = "modified energy gun"
	desc = "Your typical EG, though slightly modified. It appears to have a firing restrictor, limiting the firerate and tweaking the focus arrays."
	icon_state = "energystun100"
	item_state = null	//so the human update icon uses the icon_state instead.
	fire_delay = 15//Slightly slower than the standard.

	projectile_type = /obj/item/projectile/beam/bolt
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 2)
	modifystate = "energystun"

	firemodes = list(
		list(mode_name="low power", projectile_type=/obj/item/projectile/beam/bolt, modifystate="energystun", charge_cost = 240),
		list(mode_name="high power", projectile_type=/obj/item/projectile/beam, modifystate="energykill", charge_cost = 640),
		)

//projectiles
/obj/item/projectile/beam/bolt
	name = "laser bolt"
	icon_state = "stun"
	fire_sound = 'sound/weapons/blaster.ogg'
	damage = 5
	eyeblur = 2
	stutter = 1
	agony = 15
	damage_type = BURN
	light_color = "#FFFFFF"
	hitsound = 'sound/weapons/zapbang.ogg'

	combustion = FALSE

	muzzle_type = /obj/effect/projectile/muzzle/lightning
	tracer_type = /obj/effect/projectile/tracer/lightning
	impact_type = /obj/effect/projectile/impact/lightning