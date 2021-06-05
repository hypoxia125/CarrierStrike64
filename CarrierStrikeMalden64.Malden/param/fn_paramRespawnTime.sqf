params [["_time", 15]];

if !(_time isEqualType 0) then {_time = 15};

if (hasInterface) then {
	setPlayerRespawnTime _time;
};