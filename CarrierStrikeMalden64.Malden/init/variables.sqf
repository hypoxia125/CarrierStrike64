/* --------------- Silo Group ------------------ */

silo_1_vehPos = [
    ["quad", [7724.21,3382.97,0], 80], 
    ["quad", [7725.18,3378.39,0], 80], 
    ["quad", [7726.32,3373.14,0], 80],
    ["mrap", [7723.19,3364.11,0], 260],
    ["apc", [7716.94,3408.58, 0], 205]
];

silo_2_vehPos = [
    ["mrap", [8332.07,3093.18,0], 11],
    ["quad", [8319.83,3111.35,0], 216]
];

silo_3_vehPos = [
    ["quad", [8436.26,3769.92,0], 360],
    ["quad", [8440.75,3769.93,0], 360],
    ["quad", [8445.4,3769.74,0], 360],
    ["apc", [8434.98,3753.19,0], 200],
    ["mrap", [8405.2,3718.09,0], 30]
];

silo_4_vehPos = [
    ["mrap", [7636.68,3663.22,0], 300],
    ["quad", [7634.62,3658.67,0], 300]
];

silo_5_vehPos = [
    ["mrap", [8126.43,3919.84,0], 350],
    ["quad", [8121.53,3913.19,0], 350]
];

/* ------------- Carrier Group -------------- */

carrier_n_spawnPos = [
    [8781.82,4746.38,56.2442], 
    [8746.08,4741.09,55.2043], 
    [8695.79,4733.84,54.7805], 
    [8664.15,4737.91,55.5326]
];

carrier_s_spawnPos = [
    [7296.66,2322.65,54.3354], 
    [7272.68,2349.76,49.2404], 
    [7330.77,2285.02,50.3413], 
    [7345.24,2256.62,53.557]
];

carrier_n_vehPos = [
    ["scoutheli", [8868.24,4766.12,55.2738], 180],
    ["scoutheli", [8883.04,4768.29,56.3286], 180],
    ["transportheli", [8802.93,4754.71,56.1905], 180],
    ["transportheli", [8717.83,4743.1,54.8575], 180],
    ["boat", [8925.32,4734.54,32.0646], 82], 
    ["boat", [8924.9,4737.51,32.1491], 82], 
    ["boat", [8924.49,4740.48,32.0588], 82], 
    ["boat", [8924.07,4743.45,31.968], 82]
];

carrier_s_vehPos = [
    ["scoutheli", [7197.91,2421.32,44.014], 0],
    ["scoutheli", [7207.71,2410.25,44.762], 0],
    ["transportheli", [7253.16,2362.53,47.743], 0],
    ["transportheli", [7310.5,2297.63,52.9528], 0],
    ["boat", [7202.02,2475.05,20.2131], 318], 
    ["boat", [7199.79,2473.04,20.2976], 318], 
    ["boat", [7197.56,2471.03,20.2073], 318], 
    ["boat", [7195.33,2469.03,20.1165], 318]
];

carrier_n_explosions = [
    [8577.62,4691.7,47.7376], 
    [8766.34,4740.96,56.2761], 
    [8785.78,4726.5,57.22], 
    [8782.19,4706.62,58.1788], 
    [8808.18,4753.21,56.234], 
    [8726.11,4743.63,54.8984], 
    [8832.13,4743.1,55.711], 
    [8809.95,4714.28,56.171], 
    [8829.69,4695.14,55.6707], 
    [8856.31,4740.3,55.6594], 
    [8869.9,4760.98,55.2844], 
    [8614.02,4707.35,51.357], 
    [8891.04,4765.3,55.9732], 
    [8879.16,4736.71,56.251], 
    [8894.72,4726.54,55.9709], 
    [8902.91,4750.42,55.7857], 
    [8880.7,4707.93,57.2505], 
    [8856.53,4701.16,56.4524], 
    [8635.91,4687.64,54.3029], 
    [8665.89,4719.2,56.0656], 
    [8666.7,4681.58,56.9741], 
    [8684.99,4716.25,56.1676], 
    [8721.73,4729.95,54.9192], 
    [8746.89,4714.93,55.7697], 
    [8743.67,4684.96,57.1851]
];

carrier_s_explosions = [
    [7433.13,2212.34,51.8252], 
    [7317.61,2303.26,51.1823], 
    [7339.41,2327.48,47.2544], 
    [7291.27,2326.05,54.5723], 
    [7335.63,2358.92,43.9495], 
    [7363.89,2324.49,46.5931], 
    [7270.76,2350.58,49.1569], 
    [7283.61,2374.36,44.9579], 
    [7303.71,2388.51,43.1204], 
    [7250.86,2371.04,46.818], 
    [7299.47,2357.21,46.4621], 
    [7404.44,2227.23,53.0946], 
    [7280.54,2416.95,42.4633], 
    [7244.91,2413.77,45.6281], 
    [7219.58,2413.94,44.763], 
    [7247.61,2434.95,43.9936], 
    [7195.89,2431.77,43.843], 
    [7210.29,2450.55,44.0245], 
    [7252.19,2455.67,42.6719], 
    [7269.13,2438.59,43.1017], 
    [7403.9,2257.08,52.4921], 
    [7362.92,2256.81,52.3582], 
    [7368.14,2272.36,49.8511], 
    [7389.94,2281.03,49.4661], 
    [7378.42,2301.65,47.8167], 
    [7344.72,2291.18,49.0637], 
    [7332.9,2274.79,51.5866]
];

/* -------------- HASH MAPS ---------------------*/

hash_vehicle = createhashmapfromarray [
	[
		west,
		createhashmapfromarray [
			["antiair", "B_APC_Tracked_01_AA_F"],
			["apc", "B_APC_Wheeled_01_cannon_F"],
			["transport", "B_Truck_01_covered_F"],
			["mrap", "B_MRAP_01_hmg_F"],
			["buggy", "B_LSV_01_armed_F"],
			["quad", "B_Quadbike_01_F"],
			["attackheli", "B_Heli_Attack_01_dynamicloadout_F"],
			["transportheli", "B_Heli_Transport_01_F"],
			["scoutheli", "C_Heli_Light_01_civil_F"],
			["jet", "B_Plane_Fighter_01_F"],
			["tank", "B_MBT_01_cannon_F"],
            ["boat", "B_Boat_Transport_01_F"]
		]
	],
	[
		east,
		createhashmapfromarray [
			["antiair", "O_APC_Tracked_02_AA_F"],
			["apc", "O_APC_Tracked_02_cannon_F"],
			["transport", "O_Truck_03_covered_F"],
			["mrap", "O_MRAP_02_hmg_F"],
			["buggy", "O_LSV_02_armed_F"],
			["quad", "O_Quadbike_01_F"],
			["attackheli", "O_Heli_Attack_02_dynamicLoadout_F"],
			["transportheli", "O_Heli_Light_02_dynamicLoadout_F"],
			["scoutheli", "C_Heli_Light_01_civil_F"],
			["jet", "O_Plane_Fighter_02_F"],
			["tank", "O_MBT_02_cannon_F"],
            ["boat", "O_Boat_Transport_01_F"]
		]
	]
];

hash_siloPositions = createhashmapfromarray [
	["silo_1", silo_1_vehPos],
	["silo_2", silo_2_vehPos],
	["silo_3", silo_3_vehPos],
	["silo_4", silo_4_vehPos],
	["silo_5", silo_5_vehPos]
];

hash_carrierPositions = createhashmapfromarray [
	["northcarrier", carrier_n_vehPos],
	["southcarrier", carrier_s_vehPos]
];

hash_hud = createhashmapfromarray [
	[
		"teamColor",
		createhashmapfromarray [
			[west, "blue"],
			[east, "red"],
			[independent, "grey"]
		]
	],
	[
		"silo",
		createhashmapfromarray [
			["silo_1", 1200],
			["silo_2", 1201],
			["silo_3", 1202],
			["silo_4", 1203],
			["silo_5", 1204]
		]
	],
	[
		"carrier",
		createhashmapfromarray [
			["carrier_blue", 1205],
			["carrier_red", 1206]
		]
	],
	[
		"red",
		createhashmapfromarray [
			["silo_1", "img\silonumbers\red\silonumbers_1.paa"],
			["silo_2", "img\silonumbers\red\silonumbers_2.paa"],
			["silo_3", "img\silonumbers\red\silonumbers_3.paa"],
			["silo_4", "img\silonumbers\red\silonumbers_4.paa"],
			["silo_5", "img\silonumbers\red\silonumbers_5.paa"]
		]
	],
	[
		"blue",
		createhashmapfromarray [
			["silo_1", "img\silonumbers\blue\silonumbers_1.paa"],
			["silo_2", "img\silonumbers\blue\silonumbers_2.paa"],
			["silo_3", "img\silonumbers\blue\silonumbers_3.paa"],
			["silo_4", "img\silonumbers\blue\silonumbers_4.paa"],
			["silo_5", "img\silonumbers\blue\silonumbers_5.paa"]
		]
	],
	[
		"grey",
		createhashmapfromarray [
			["silo_1", "img\silonumbers\grey\silonumbers_1.paa"],
			["silo_2", "img\silonumbers\grey\silonumbers_2.paa"],
			["silo_3", "img\silonumbers\grey\silonumbers_3.paa"],
			["silo_4", "img\silonumbers\grey\silonumbers_4.paa"],
			["silo_5", "img\silonumbers\grey\silonumbers_5.paa"]
		]
	],
	[
		"stats",
		createhashmapfromarray [
			["carrier_blue_stats", 1000],
			["carrier_red_stats", 1001]
		]
	]
];

diag_log "variablesServer.sqf success"