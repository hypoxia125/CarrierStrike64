/* ----------------------------------------------------------------------------
Function: CS_fnc_removeRespawnPosition

Description:
    Removes a respawn position

Parameters:
    _silo - silo to remove respawn from

Returns:
    true - if successful

Author:
    Hypoxic
---------------------------------------------------------------------------- */

if !(isServer) exitWith {};

params [["_silo", objNull, [objNull]]];

private _respawnID = _silo getVariable ["respawn", []];

if (count _respawnID == 2) then {
	_respawnID call BIS_fnc_removeRespawnposition;
	_silo setVariable ["respawn", nil];
};

true;