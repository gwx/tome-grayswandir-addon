newBirthDescriptor {
	type = "subclass",
	name = "Weaponsmaster",
	desc = {
		"A Weaponsmaster hits things. With weapons. A lot.",
		"Their most important stats are: Strength and Dexterity",
		"#GOLD#Stat modifiers:",
		"#LIGHT_BLUE# * +4 Strength, +4 Dexterity, +1 Constitution",
		"#LIGHT_BLUE# * +0 Magic, +0 Willpower, +0 Cunning",
		"#GOLD#Life per level:#LIGHT_BLUE# +3",
	},
	power_source = {technique=true},
	stats = { str=4, con=1, dex=4, },
	copy_add = {
		life_rating = 3,
    },
	talents_types = {
		["technique/2hweapon-assault"]={true, 0.3},
		["technique/combat-techniques-active"]={true, 0.3},
		["technique/combat-techniques-passive"]={true, 0.3},
		["technique/combat-training"]={true, 0.7},
		["technique/conditioning"]={true, 0.3},
		["technique/battle-tactics"]={false, 0.3},
		["technique/field-control"]={false, 0},
		["cunning/survival"]={true, 0},
		["cunning/dirty"]={true, 0.3},
		["technique/thuggery"]={false, 0.3},
	},
	talents = {
		[ActorTalents.T_DIRTY_FIGHTING] = 1,
		[ActorTalents.T_STUNNING_BLOW_ASSAULT] = 1,
		[ActorTalents.T_WEAPON_COMBAT] = 1,
		[ActorTalents.T_ARMOUR_TRAINING] = 1,
		},
	copy = {
    resolvers.equipbirth{ id=true,
			{type="weapon", subtype="greatmaul", name="iron greatmaul", autoreq=true, ego_chance=-1000, ego_chance=-1000},
			{type="armor", subtype="heavy", name="iron mail armour", autoreq=true, ego_chance=-1000, ego_chance=-1000},
		},
	},
}

getBirthDescriptor('class', 'Warrior').descriptor_choices.subclass.Weaponsmaster = 'allow'
