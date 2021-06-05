if !(isServer) exitWith {};
if !(canSuspend) exitWith {_this spawn CS_fnc_leaderCyclePool};

while {true} do {

	private _oldArray = (allUnits select {_x == leader group _x});
	waitUntil {
		!(_oldArray isEqualTo (allUnits select {_x == leader group _x}))
	};

	//Get All Leaders
	private _newLeaders = [];
	allGroups apply {

		if (isPlayer leader _x) then {
			_newLeaders pushBackUnique leader _x;
		};
	};

	private _oldLeaders = missionNamespace getVariable ["leaders", []];

	if !(_oldLeaders isEqualTo []) then {
		_oldLeaders apply {

			//Remove leaders who are no longer leaders
			if !(_x == leader group _x) then {
				_oldLeaders deleteAt (_oldLeaders find _x);
			};

			//Remove their respawns
			private _respawn = _x getVariable ["respawn", []];
			if (count _respawn == 2) then {
				_respawn call BIS_fnc_removeRespawnPosition;
				_x setVariable ["respawn", []];
			};
		};
	};

	//Intersect the arrays
	_newLeaders insert [-1, _oldLeaders, true];

	//Add Leaders to Spawn Cycle Pool
	missionNamespace setVariable ["leaders", _newLeaders];

	sleep 1;
};
