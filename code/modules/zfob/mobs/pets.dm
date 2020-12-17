/mob/living/simple_mob/animal/giant_spider/spider_hos
	name = "The Chief"
	desc = "The Chief's companion. Probably. Who knows? \
	One thing is for certain, which is the absolute hatred it has for you."
	ai_holder_type = /datum/ai_holder/simple_mob/spider_hos


	icon_state = "pepper"
	icon_living = "pepper"
	icon_dead = "pepper_dead"
	has_eye_glow = TRUE

//	faction = "neutral"

	melee_damage_lower = 1
	melee_damage_upper = 1//see toxin below
	attack_sharp = 1
	attack_edge = 1

	poison_type = "lichpowder"	// The reagent that gets injected when it attacks.
	poison_chance = 100			// Chance for injection to occur.
	poison_per_bite = 1			// Amount added per injection.


/datum/ai_holder/simple_mob/spider_hos
	hostile = FALSE
	cooperative = FALSE
	retaliate = TRUE
	returns_home = FALSE
	can_flee = FALSE
	speak_chance = 1
	wander = TRUE
	base_wander_delay = 15
