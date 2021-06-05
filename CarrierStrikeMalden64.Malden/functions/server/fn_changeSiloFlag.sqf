if !(isServer) exitWith {};

params [
	["_silo", objNull, [objNull]],
	["_team", independent, [independent]]
];

private _siloMarker = str _silo;
private _siloArea = str _silo + "_area";

private _color = call {
	if (_team == west) exitWith {
		"colorBLUFOR"
	};
	if (_team == east) exitWith {
		"colorOPFOR"
	};
	if (_team == independent) exitWith {
		"ColorBLACK"
	};
};

_siloMarker setMarkerColor _color;
_siloArea setMarkerColor _color;