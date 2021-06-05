params [["_time", 300]];

if !(_time isEqualType 0) then {_time = 300};

if (isServer) then {

	siloCycleTime = _time;
};