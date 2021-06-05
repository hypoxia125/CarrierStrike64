if !(isServer) exitWith {};
if !(canSuspend) exitWith {_this spawn CS_fnc_leaderCyclePool};

while {true} do {

	// Get leaders
	private _leaderPool = missionNamespace getVariable ["leaders", []];
	
	if !(_leaderPool isEqualTo []) then {

		_leaderPool apply {
	
			//Exclude default group leaders
			if !(_x == leader b_default || _x == leader o_default) then {

				//Check life state alive
				if (lifeState _x == "HEALTHY" || lifeState _x == "INJURED") then {
			
					//Check if respawn already exists, pass if does not exit
					private _oldRespawn = _x getVariable ["respawn", []];
					if (_oldRespawn isEqualTo []) then {
						
						diag_log "creating respawn";
						//Create respawn
						private _newRespawn = [group _x, _x, "Squad Leader"] call BIS_fnc_addRespawnPosition;
						_x setVariable ["respawn", _newRespawn];
						diag_log "respawn created";
					};
				};
			
				//Check life state downed
				if !(lifeState _x == "HEALTHY" || lifeState _x == "INJURED") then {
			
					//Check if respawn exists, pass if it does
					private _oldRespawn = _x getVariable ["respawn", []];
					if !(_oldRespawn isEqualTo []) then {
			
						diag_log "deleting respawn";
						//Delete respawn
						if (count _oldRespawn == 2) then {
							_oldRespawn call BIS_fnc_removeRespawnPosition;
							_x setVariable ["respawn", []];
						};
						diag_log "respawn deleted";
					};
				};
			};
		};
	};
	sleep 1;
};