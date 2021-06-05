debug = true;

if !(isServer) exitWith {};

currentPlayerCount = count allPlayers;
publicVariable "currentPlayerCount";

if (debug) then {
	currentPlayerCount = 999
};

switch true do {
	case (currentPlayerCount <= 16) : {
		silos = [
			[silo_1, "Silo 1"],
			[silo_2, "Silo 2"],
			[silo_3, "Silo 3"]
		];
		publicVariable "silos";
		["silo_4", "silo_4_area", "silo_5", "silo_5_area"] apply {
			deleteMarker _x
		};
	};
	case (currentPlayerCount > 16) : {
		silos = [
			[silo_1, "Silo 1"],
			[silo_2, "Silo 2"],
			[silo_3, "Silo 3"],
			[silo_4, "Silo 4"],
			[silo_5, "Silo 5"]
		];
		publicVariable "silos";
	};
};