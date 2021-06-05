/* ----------------------------------------------------------------------------
Function: fn_findNearestRespawn

Description:
    Finds the nearest respawn, either a carrier or a silo

Parameters:
    _unit - _unit to find respawn for

Returns:
    _final # 0 - returns the closest spawn out of the array

Author:
    Hypoxic
---------------------------------------------------------------------------- */

params ["_unit"];

// Get locations

private _nearspawns = [];

private _nearSilos = _unit nearEntities ["B_Ship_MRLS_01_F", 10000];
_nearSilos apply {
    _nearspawns pushBack _x
};

private _nearCarriers = nearestobjects [_unit, ["land_Carrier_01_base_F"], 10000, true];
_nearCarriers apply {
    _nearspawns pushBack _x
};

// sort by distance

private _final = [
	_nearspawns,
	[_unit],
	{
		_input0 distance2D _x
	}, "ASCEND"
] call BIS_fnc_sortBy;

_final # 0;