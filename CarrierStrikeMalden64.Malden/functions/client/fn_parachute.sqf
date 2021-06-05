params [["_unit", objNull]];

private _parachute = createVehicle ["Steerable_Parachute_F", [0,0,0], [], 0, "NONE"];
private _playerPos = getPosATL _unit;

_parachute setPosATL _playerPos;
_unit moveInDriver _parachute;

waitUntil {isNull driver _parachute};
sleep 3;
deleteVehicle _parachute;