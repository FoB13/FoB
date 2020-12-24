/obj/item/weapon/rig/pmc/security/station
	name = "PMC-Sec suit control module"
	desc = "A suit worn by private military contractors. This one is setup for Security. Armoured and space ready. \
	Unlike the modules you'd find in a proper military, this RIG lacks proper ablative plating. It does, however, feature better padding and ballistic protection. \
	Atop the aforementioned protection, it has redundant systems, giving it minor protection from EMPs."

	req_access = list(access_hos)

	emp_protection = 25

	armor = list(melee = 80, bullet = 60, laser = 30, energy = 10, bomb = 45, bio = 100, rad = 75)
	allowed = list(
		/obj/item/device/flashlight,
		/obj/item/weapon/tank,
		/obj/item/weapon/melee/baton,
		/obj/item/weapon/gun,
		/obj/item/weapon/storage
		)

/obj/item/weapon/rig/pmc/security/station/equipped

	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/mounted/egun,
		/obj/item/rig_module/vision/sechud,
		/obj/item/rig_module/grenade_launcher/flash,
		/obj/item/rig_module/pat_module/sec
		)

/obj/item/weapon/rig/pmc/security/station/low
	name = "PMC-Sec suit control module"
	desc = "A suit worn by private military contractors. This one is setup for Security. Armoured and space ready. \
	This appears to be a stripped suit, lacking full composite plating."
	icon_state = "pmc_securitygreen_rig"

	req_access = list(access_security)

	emp_protection = 0

	armor = list(melee = 40, bullet = 25, laser = 25, energy = 10, bomb = 25, bio = 100, rad = 75)

/obj/item/weapon/rig/pmc/security/station/low/equipped

	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/vision/sechud,
		)