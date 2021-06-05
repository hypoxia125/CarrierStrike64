/* ----------------------------------------------------------------------------
Function: CS_fnc_carrierVehicleRespawns

Description:
    Handles respawn cycle of vehicles on a carrier

Parameters:
    _carrier - carrier give to the function

Returns:
    _handle - spawned script handle

Author:
    Hypoxic
---------------------------------------------------------------------------- */

if !(isServer) exitWith {};

private _handle = _this spawn {
	
	params ["_carrier"];

	private _team = _carrier getVariable "owner";

	private _positions = call {
		if ("n" in str _carrier) exitWith {
			missionNamespace getVariable "carrier_n_vehPos";
		};
		if ("s" in str _carrier) exitWith {
			missionNamespace getVariable "carrier_s_vehPos";
		};
	};

	private _vehicleArray = [];
	
	for "_i" from 0 to count _positions do {
		_vehicleArray pushBack objNull;
	};
	_carrier setVariable ["vehicleArray", _vehicleArray];

	while {true} do {
		
		{
			_x params ["_vehicleType", "_pos", "_dir"];
		
			private _skipspawn = false;
			private _currentVehicle = (_carrier getVariable "vehicleArray") # _forEachIndex;
		
			if !(isNull _currentVehicle) then {
				if (alive _currentVehicle && count crew _currentVehicle != 0 && canMove _currentVehicle) then {
					_skipspawn = true;
				} else {
					diag_log format ["DELETING VEHICLE %1 at %2", _currentVehicle, _carrier];
					deleteVehicle _currentVehicle
				};
			};

			if !(_skipspawn) then {
				
				private _vehicleClass = (missionNamespace getVariable "hash_vehicle") get _team get _vehicleType;

				private _vehicle = createVehicle [_vehicleClass, [0,0,0], [], 0, "NONE"];
				_vehicle allowDamage false;
				_vehicle setDir _dir;
				_vehicle setPosATL _pos;
				_vehicle call CS_fnc_vehicleDefaultTextures;
				_vehicle allowDamage true;
				
				_vehicleArray set [_forEachIndex, _vehicle];
				_carrier setVariable ["vehicleArray", _vehicleArray];
			};
		} forEach _positions;

		sleep (missionNamespace getVariable ["vehicleSpawnTime", 300]);
	};
};

_handle