params ["_unit"];

_unit addAction [
	"Teleport to Avaiable Boat",
	{
		params ["_target", "_caller", "_actionID", "_arguments"];

		private _nearBoats = _caller nearEntities [["B_Boat_Transport_01_F", "O_Boat_Transport_01_F"], 300];
		_nearBoatsSorted = [
			_nearBoats,
			[_caller],
			{
				count crew _x;
			},
			"ASCEND"
		] call BIS_fnc_sortBy;

		if (count _nearBoatsSorted > 0) then {
			_caller moveInAny (_nearBoatsSorted # 0)
		} else {
			hint "There are no avaiable boats. Please wait for respawn wave and try again";
		};
	},
	nil, 1.5, false, true, "",
	'private _northOwner = carrier_n getVariable "owner";
	private _southOwner = carrier_s getVariable "owner";

	((_this distance2D carrier_n <= 200 &&
	side group _this == _northOwner) &&
	vehicle _this == _this) ||
	((_this distance2D carrier_s <= 200 &&
	side group _this == _southOwner) &&
	vehicle _this == _this)',
	-1,
	false,
	"",
	""
];