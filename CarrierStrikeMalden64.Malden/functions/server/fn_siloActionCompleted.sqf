/* ----------------------------------------------------------------------------
Function: CS_fnc_siloActionCompleted

Description:
    Executes various functions after a silo capture action is completed

Parameters:
    silo - Object - Silo action is assigned to
	caller - Object - Unit that is using the action

Returns:
    True - if successful

Author:
    Hypoxic
---------------------------------------------------------------------------- */

if !(isServer) exitWith {};

params [
    ["_silo", objNull, [objNull]],
    ["_caller", objNull, [objNull]]
];

private _playerTeam = side group _caller;
private _siloTeam = _silo getVariable "owner";

// Set new silo team
_silo setVariable ["owner", _playerTeam, true];
// Add respawn position
[_silo, _playerTeam] call CS_fnc_addSiloRespawnPosition;
// Start vehicle respawn cycle
_silo call CS_fnc_siloVehicleRespawns;
// Start launch cycle
_silo call CS_fnc_launchCycle;
// Update HUD and map
[_silo, _playerTeam] remoteExec ["CS_fnc_siloHudUpdate", [0,-2] select isDedicated, _silo];
[_silo, _playerTeam] call CS_fnc_changeSiloFlag;

true;