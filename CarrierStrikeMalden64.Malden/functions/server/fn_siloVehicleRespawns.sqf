/* ----------------------------------------------------------------------------
Function - CS_fnc_siloVehicleRespawns

Description:
	Starts the respawn loop for vehicles at silo locations

Parameters:
	_silo - The silo that acts as the center point for the vehicle spawns

Returns:
	_handle - handle of spawned script

Author:
	Hypoxic
---------------------------------------------------------------------------- */
if !(isServer) exitWith {};

params [["_silo", objNull, [objNull]]];

if (_silo getVariable ["vehicleCycle_On", false]) exitWith {};

private _handle = _this spawn {

	params ["_silo"];

	_silo setVariable ["vehicleCycle_On", true];

	private _vehicleArray = [];
	
	private _positions = (missionNamespace getVariable "hash_siloPositions") get (str _silo);
	for "_i" from 1 to count _positions do {
		_vehicleArray pushBack objNull;
	};
	_silo setVariable ["vehicleArray", _vehicleArray];

	while {true} do {

		private _team = _silo getVariable "owner";
		if (_team == independent) exitWith {_silo setVariable ["vehicleCycle_On", false]};
		
		{
			_x params ["_vehicleType", "_pos", "_dir"];
		
			private _skipspawn = false;
			private _currentVehicle = (_silo getVariable ["vehicleArray", []]) # _forEachIndex;
		
			if !(isNull _currentVehicle) then {
				if (alive _currentVehicle && count crew _currentVehicle != 0 && canmove _currentVehicle) then {
					_skipspawn = true;
				} else {
					diag_log format ["DELETING VEHICLE %1 at %2", _currentVehicle, _silo];
					deleteVehicle _currentVehicle;
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
				_silo setVariable ["vehicleArray", _vehicleArray];
			};
		} forEach _positions;

		sleep (missionNamespace getVariable ["vehicleSpawnTime", 120]);
	};
};

_handle