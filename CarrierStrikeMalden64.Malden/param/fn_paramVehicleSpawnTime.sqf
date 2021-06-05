params [["_time", 120]];

if !(_time isEqualType 0) then {_time = 120};

if (isServer) then {

	vehicleSpawnTime = _time;
};