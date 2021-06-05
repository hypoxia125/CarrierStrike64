params ["_newUnit"];

_newUnit allowDamage false;

private _nearestRespawn = _newUnit call CS_fnc_findNearestRespawn;
diag_log format ["Nearest Respawn Script Returned %1", _nearestRespawn];

private _respawnType = call {
	if (_nearestRespawn isKindOf "land_Carrier_01_base_F") exitWith {
		"CARRIER";
	};
	if (_nearestRespawn isKindOf "B_Ship_MRLS_01_F") exitWith {
		"SILO";
	};
};

diag_log format ["CS_fnc_requestSpawnLocation - _respawnType = %1", _respawnType];

private _carrier = call {
	if (side group _newUnit == west) exitWith {
		if (carrier_n getVariable "owner" == west) exitWith {
			carrier_n
		};
		if (carrier_s getVariable "owner" == west) exitWith {
			carrier_s
		};
	};
	if (side group _newUnit == east) exitWith {
		if (carrier_n getVariable "owner" == east) exitWith {
			carrier_n
		};
		if (carrier_s getVariable "owner" == east) exitWith {
			carrier_s
		};
	};
};

diag_log format ["CS_fnc_requestSpawnLocation - _carrier = %1", _carrier];

private _position = call {
	if (_respawnType == "CARRIER") exitWith {
		if (_carrier == carrier_n) exitWith {
			selectRandom (missionNamespace getVariable "carrier_n_spawnPos")
		};
		if (_carrier == carrier_s) exitWith {
			selectRandom (missionNamespace getVariable "carrier_s_spawnPos")
		};
	};
	if (_respawnType == "SILO") exitWith {
		[_nearestRespawn, 100, 300, 5, 0, 0.25, 0, [], []] call BIS_fnc_findSafePos;
	};
};

diag_log format ["CS_fnc_requestSpawnLocation - _position = %1", _position];

if (count _position == 2 && _respawnType == "SILO") then {
	_newUnit setpos _position;
};
if (count _position == 3 && _respawnType == "CARRIER") then {
	_newUnit setPosATL _position;
};

diag_log format ["CS_fnc_requestSpawnLocation - %1 moved to %2", _newUnit, _position];
_newUnit allowDamage true;