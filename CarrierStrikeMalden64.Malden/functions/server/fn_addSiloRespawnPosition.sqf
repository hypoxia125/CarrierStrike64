/* ----------------------------------------------------------------------------
Function: CS_fnc_addRespawnPosition

Description:
    Adds a respawn position to a given silo for the given side

Parameters:
    silo - silo respawn will be added to
    side - side the respawn will be given to

Returns:
    _respawn - respawn ID

Author:
    Hypoxic
---------------------------------------------------------------------------- */

if !(isServer) exitWith {};

params [
    ["_silo", objNull, [objNull]],
    ["_side", independent, [independent]]
];

if (_side == independent) exitWith {};

private _siloname = _silo getVariable "name";

private _respawn = call {
    if (_side == west) exitWith {
        [west, getPosATL _silo, _siloname] call BIS_fnc_addRespawnposition;
    };
    if (_side == east) exitWith {
        [east, getPosATL _silo, _siloname] call BIS_fnc_addRespawnposition;
    };
};

_silo setVariable ["respawn", _respawn];

_respawn;