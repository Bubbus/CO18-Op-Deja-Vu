//	Zeus extensions for CA, by Bubbus.
//	
//	This is the configuration file for the gearscript spawner.
//	The default example in this file covers all factions of vanilla Arma.  You can modify it to spawn your own custom units.
//	The NATO example has comments to help understanding.


if (isDedicated) exitWith {};	// Don't remove this line!


_units = 
[	
	[
		"Bad boys",
		"inf", "opf_f", east,
		[
			[
				"Rifleman",
				["rif"]
			],
		
			[
				"Marksman",
				["mk"]
			],
		
			[
				"Fireteam 4x",
				["ftl", "med", "ar", "lat"]
			],
			
			[
				"Squad 6x",
				["ftl", "med", "ar", "lat", "aar", "mk"]
			],
			
			[
				"Rifle Sec 9x",
				["ftl", "med", "ar", "rif", "rif", "rif", "rif", "rif", "rif"]
			],
			
			[
				"Weapons team 4x",
				["ftl", "ar", "mk", "lat"]
			]
		]
	], 
	
	[
		"Beep jeeps", 
		"veh", "opf_f", east,
		[
			[
				"Ural Rifle sec 9x",
				"LOP_TKA_Ural",
				["ftl", "med", "ar", "rif", "rif", "rif", "rif", "rif", "rif"]
			],
		
			[
				"GAZ Squad 6x",
				"rhs_tigr_3camo_msv",
				["ftl", "med", "ar", "lat", "aar", "mk"]
			],
			
			[
				"UAZ Fireteam 4x",
				"LOP_AM_OPF_UAZ_Open",
				["ftl", "med", "ar", "lat"]
			],
			
			[
				"BRDM (oh no)",
				"rhsgref_BRDM2",
				["ftl", "rif", "rif"]
			]
		]
	]
	
];	// <-- Comma rule does not apply here - do not edit.

ca_zeus_unitsStructure = _units; // Don't remove this line!