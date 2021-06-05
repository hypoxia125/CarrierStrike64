params [["_newUnit", objNull]];

_newUnit addAction [
	"Pull Parachute",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_target call CS_fnc_parachute;
	},
	nil, 0, false, true, "", "((getPos _this) # 2 > 10) && isNull objectParent _this", -1, false, "", ""
];