if !(isServer) exitWith {};
if (missionNamespace getVariable ["GAME_ENDED", false]) exitWith {};

missionNamespace setVariable ["GAME_ENDED", true];

private _westHull = missionNamespace getVariable "west_hull_hp";
private _eastHull = missionNamespace getVariable "east_hull_hp";

private _winner = call {
	if (_westHull < _eastHull) exitWith {
		east
	};
	if (_westHull > _eastHull) exitWith {
		west
	};
};

private _carrier = call {
	if (_winner == east) exitWith {
		if (carrier_n getVariable "owner" == west) exitWith {
			carrier_n
		};
		if (carrier_s getVariable "owner" == west) exitWith {
			carrier_s
		};
	};
	if (_winner == west) exitWith {
		if (carrier_n getVariable "owner" == east) exitWith {
			carrier_n
		};
		if (carrier_s getVariable "owner" == east) exitWith {
			carrier_s
		};
	};
};

private _ending = call {
	if (_winner == west) exitWith {
		"west_win"
	};
	if (_winner == east) exitWith {
		"east_win"
	};
};

private _respawn = _carrier getVariable ["respawn", []];
if (count _respawn == 2) then {
	_respawn call BIS_fnc_removeRespawnPosition;
};

private _explosions = _carrier spawn CS_fnc_carrierDeadScene;
waitUntil {scriptDone _explosions};

if (_winner == west) then {
	[_ending, true, true, false, false] remoteExec ["BIS_fnc_endMission", west];
	[_ending, false, true, false, false] remoteExec ["BIS_fnc_endMission", east];
};
if (_winner == east) then {
	[_ending, true, true, false, false] remoteExec ["BIS_fnc_endMission", east];
	[_ending, false, true, false, false] remoteExec ["BIS_fnc_endMission", west];
};