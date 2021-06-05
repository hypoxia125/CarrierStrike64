/* ----------------------------------------------------------------------------
Function: CS_fnc_siloActionStarted

Description:
    Executes various functions when silo begins to be captured

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

private _prevteam = _silo getVariable "owner";
private _newTeam = independent;

// Only change hud to neutral if the launcher was previously not neutral
if !(_prevteam == independent) then {
	[_silo, _newTeam] remoteExec ["CS_fnc_siloHudUpdate", [0,-2] select isDedicated, _silo];
};

// Set new team
_silo setVariable ["owner", _newTeam, true];
// Change flag + JIP
[_silo, _newTeam] call CS_fnc_changeSiloFlag;
// Remove respawn position
_silo call CS_fnc_removeSiloRespawnPosition;

true;