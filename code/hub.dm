/world

	hub = "Exadv1.spacestation13"
	name = "FoB13"
//	visibility = 0 //VOREStation Edit

/world/proc/update_hub_visibility()
	GLOB.visibility_pref = !(GLOB.visibility_pref)
	if(GLOB.visibility_pref)
		hub_password = "kMZy3U5jJHSiBQjr"
	else
		hub_password = "SORRYNOPASSWORD"
