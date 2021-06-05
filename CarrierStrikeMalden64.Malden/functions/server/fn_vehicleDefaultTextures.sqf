params [["_vehicle", objNull, [objNull]]];

if (isNull _vehicle) exitWith {};
if !(local _vehicle) exitWith {};

private _nearestCarrier = nearestobjects [_vehicle, ["land_Carrier_01_base_F"], 300, true];
if !(_nearestCarrier isEqualTo []) then {
	
	private _nearestCarrierOwner = (_nearestCarrier # 0) getVariable "owner";

	private _opforLittlebird = missionNamespace getVariable "hash_vehicle" get east get "scoutheli";
	if (_vehicle isKindOf _opforLittlebird && _nearestCarrierOwner == east) then {
		[
			_vehicle,
			["Vrana",1], 
			["AddTread",1,"AddTread_Short",0,"AddDoors",0]
		] call BIS_fnc_initVehicle;
	};

	private _bluforLittlebird = missionNamespace getVariable "hash_vehicle" get west get "scoutheli";
	if (_vehicle isKindOf _bluforLittlebird && _nearestCarrierOwner == west) then {
		[
			_vehicle,
			["Jeans",1], 
			["AddTread",1,"AddTread_Short",0,"AddDoors",0]
		] call BIS_fnc_initVehicle;
	};
};

private _opforTransportChopper = missionNamespace getVariable "hash_vehicle" get east get "transportheli";
if (_vehicle isKindOf _opforTransportChopper) then {
	[
		_vehicle,
		["Opfor",1], 
		true
	] call BIS_fnc_initVehicle;
};