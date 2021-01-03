/datum/job/children_atom
	department_flag = CHILDREN_ATOM
	selection_color = "#cdffdc"

	faction = "Children of Atom"

	total_positions = 1
	spawn_positions = 1

	outfit = /datum/outfit/job/children_atom

	forbids = "The Church of the Children of Atom forbids: Heretics joining the fold. False claims of faith. Preventing the spread of Atom. "
	enforces = "The Church of the Children of Atom expects: To seek revelation from Atom. To follow the glow of Atom. To follow the orders from those above. To bathe in the glory of Atom."
	objectivesList = list("Atom requires the creation and fortification of a new holy land.", "Atom requires the conversion of those who dwell in the waste.", "Atom requires the collection of relics containing the glow, a fragment of his existence.")

/datum/outfit/job/children_atom
	name = "Children of Atom"
	jobtype = 	/datum/job/children_atom

	uniform = 	/obj/item/clothing/under/f13/atombeliever
	shoes = 	/obj/item/clothing/shoes/f13/tan
	head = 		/obj/item/clothing/head/helmet/f13/atombeliever
	id =		null
	ears =		null
	belt =		null
	back =		null
	box =		null

/datum/outfit/job/children_atom/inquisitor
	r_pocket = /obj/item/kitchen/knife/combat/survival

/datum/outfit/job/children_atom/seer
	uniform = 	/obj/item/clothing/under/f13/atomwitchunder
	suit = 		/obj/item/clothing/suit/armor/f13/atomwitch

/datum/outfit/job/children_atom/zealot
	suit = 		/obj/item/clothing/suit/armor/f13/atomzealot
	head = 		/obj/item/clothing/head/helmet/f13/atomzealot
	r_pocket = /obj/item/kitchen/knife/combat/survival

/datum/outfit/job/children_atom/high
	uniform = 	/obj/item/clothing/under/f13/atomfaithful
	r_pocket =	/obj/item/kitchen/knife/ritualdagger

/datum/job/children_atom/after_spawn(mob/living/carbon/human/H, mob/M)
	ADD_TRAIT(H, TRAIT_RADIMMUNE, "child_of_atom")

/datum/job/children_atom/high
	selection_color = "#8bffae"
	outfit = /datum/outfit/job/children_atom/high

/datum/job/children_atom/high/after_spawn(mob/living/carbon/human/H, mob/M)
	ADD_TRAIT(H, TRAIT_RADIMMUNE, "child_of_atom")
	H.AddComponent(/datum/component/glow_heal, chosen_targets = /mob/living/carbon/human, allow_revival = TRUE, restrict_faction = "Children of Atom", type_healing = list(TRUE, TRUE, TRUE, TRUE))

/datum/job/children_atom/high/grandconfessor
	title = "Grand Confessor"
	flag = F13GRANDCONFESSOR

	display_order = JOB_DISPLAY_ORDER_GRANDCONFESSOR

	supervisors = "Atom and the Seer"
	description = "You hold complete authority of the members in this area. You will need to make decisions based on Atom's guidance. Follow the tasks that Atom has set forth."

/datum/job/children_atom/high/confessor
	title = "Confessor"
	flag = F13CONFESSOR

	display_order = JOB_DISPLAY_ORDER_CONFESSOR

	supervisors = "Atom, the Seer, and the Grand Confessor"
	description = "You hold the Childrens' hearts. You understand their struggles and guide others to come to Atom's glow. Follow the objectives that Atom has set forth."

/datum/job/children_atom/seer
	title = "Seer"
	flag = F13SEER

	outfit = /datum/outfit/job/children_atom/seer

	display_order = JOB_DISPLAY_ORDER_SEER

	supervisors = "Atom and the Confessors"
	description = "You have visions from the glow of Atom. These visions will be necessary for the guidance of the Church in this area. The Confessors must listen to your visions. Follow the objectives that Atom has set forth."

/datum/job/children_atom/inquisitor
	title = "Inquisitor"
	flag = F13INQUISITOR

	outfit = /datum/outfit/job/children_atom/inquisitor

	display_order = JOB_DISPLAY_ORDER_INQUISITOR

	supervisors = "Atom and the Confessors"
	description = "You are the hidden force of the church. The heretics must be divided by Atom. Follow the objectives that Atom has set forth."

/datum/job/children_atom/grand_zealot
	title = "Grand Zealot"
	flag = F13GRANDZEALOT

	outfit = /datum/outfit/job/children_atom/zealot

	display_order = JOB_DISPLAY_ORDER_GRANDZEALOT

	supervisors = "Atom and the Confessors"
	description = "You have been appointed by the Confessors to lead the Zealots. You are the primary force of Atom. Follow the objectives that Atom has set forth."

/datum/job/children_atom/zealot
	title = "Zealot"
	flag = F13ZEALOT

	outfit = /datum/outfit/job/children_atom/zealot

	display_order = JOB_DISPLAY_ORDER_ZEALOT

	supervisors = "Atom, the Grand Zealot, and the Confessors"
	description = "You are the primary force of Atom. Follow the objectives that Atom has set forth."

	total_positions = 3
	spawn_positions = 3

/datum/job/children_atom/child_atom
	title = "Child of Atom"
	flag = F13CHILDATOM

	display_order = JOB_DISPLAY_ORDER_CHILDATOM

	supervisors = "Atom and the Confessors"
	description = "You are a follower of Atom. Follow the objectives that Atom has set forth."

	total_positions = 5
	spawn_positions = 5

//starting landmarks

/obj/effect/landmark/start/children_atom
	icon_state = "Settler"

/obj/effect/landmark/start/children_atom/grandconfessor
	name = "Grand Confessor"

/obj/effect/landmark/start/children_atom/confessor
	name = "Confessor"

/obj/effect/landmark/start/children_atom/seer
	name = "Seer"

/obj/effect/landmark/start/children_atom/inquisitor
	name = "Inquisitor"

/obj/effect/landmark/start/children_atom/grandzealot
	name = "Grand Zealot"

/obj/effect/landmark/start/children_atom/zealot
	name = "Zealot"

/obj/effect/landmark/start/children_atom/acolyte
	name = "Acolyte"
