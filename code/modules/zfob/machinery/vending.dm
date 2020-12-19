/obj/machinery/vending/secarmor
	name = "Equipment Vending Machine"
	desc = "A vending machine that spits out all manner of equipment."
	icon_state = "sec"
	products = list(
		/obj/item/clothing/suit/armor/pcarrier = 12,
		/obj/item/clothing/accessory/armor/armorplate/medium = 12,
		/obj/item/clothing/accessory/armor/armorplate/blast = 2,
		/obj/item/clothing/accessory/armor/armorplate/stab = 2,
		/obj/item/clothing/accessory/armor/legguards = 12,
		/obj/item/clothing/accessory/armor/armguards = 12,
		/obj/item/clothing/accessory/storage/pouches = 10,
		/obj/item/clothing/accessory/storage/pouches/large = 2,
		/obj/item/clothing/accessory/armor/helmcover/nt = 12,
		/obj/item/clothing/accessory/armor/tag/nt = 12,
		/obj/item/clothing/accessory/badge/corporate_tag = 12)
	req_log_access = access_armory
	has_logs = 1