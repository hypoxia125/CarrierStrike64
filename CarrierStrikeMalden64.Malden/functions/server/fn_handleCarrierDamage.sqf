/* ----------------------------------------------------------------------------
Function: CS_fnc_handleCarrierDamage

Description:
    Handles damage when a missile reaches a carrier. Contains shield destruction and core vulnerability 

Parameters:
    0 - team that is receiving the damage

Returns:
    NONE

Author:
    Hypoxic
---------------------------------------------------------------------------- */

if !(isServer) exitWith {};

params ["_teamToBeDamaged"];

/* --------------------- HOLY SHIT VARIABLES ----------------------- */

private _serverChannel = missionNamespace getVariable "server_channel";

private _westHull = missionNamespace getVariable "west_hull_hp";
private _westShields = missionNamespace getVariable "west_shield_hp";
private _eastHull = missionNamespace getVariable "east_hull_hp";
private _eastShields = missionNamespace getVariable "east_shield_hp";

private _westSafeZone = call {
	if (carrier_n_safeZone getVariable "owner" == west) exitWith {
		carrier_n_safeZone
	};
	if (carrier_s_safeZone getVariable "owner" == west) exitWith {
		carrier_s_safeZone
	};
};
private _eastSafeZone = call {
	if (carrier_n_safeZone getVariable "owner" == east) exitWith {
		carrier_n_safeZone
	};
	if (carrier_s_safeZone getVariable "owner" == east) exitWith {
		carrier_s_safeZone
	};
};

private _westShieldEffect = call {
	if (carrier_n_shield getVariable "owner" == west) exitWith {
		carrier_n_shield
	};
	if (carrier_s_shield getVariable "owner" == west) exitWith {
		carrier_s_shield
	};
};
private _eastShieldEffect = call {
	if (carrier_n_shield getVariable "owner" == east) exitWith {
		carrier_n_shield
	};
	if (carrier_s_shield getVariable "owner" == east) exitWith {
		carrier_s_shield
	};
};

private _westCore = call {
	if (carrier_n_core getVariable "owner" == west) exitWith {
		carrier_n_core
	};
	if (carrier_s_core getVariable "owner" == west) exitWith {
		carrier_s_core
	};
};
private _eastCore = call {
	if (carrier_n_core getVariable "owner" == east) exitWith {
		carrier_n_core
	};
	if (carrier_s_core getVariable "owner" == east) exitWith {
		carrier_s_core
	};
};

private _missileValue = missionNamespace getVariable "missile_damage";
private _missileArray = missionNamespace getVariable "missileArray";

// If team to be damaged is WEST
if (_teamToBeDamaged == west) then {
	if (_westShields > 0) then {
		_westShields = _westShields - _missileValue;
		missionNamespace setVariable ["west_shield_hp", _westShields, true];
		[west, 100, floor _westShields] remoteExec ["CS_fnc_carrierStatsUpdate", [0,-2] select isDedicated];
	};

	// If shield reaches 0
	if (_westShields <= 0) then {
		// Update hud to 0 shields before stuff gets calculated
		if (_westHull == 100) then {

			// Update HUD
			[west, 100, 0] remoteExec ["CS_fnc_carrierStatsUpdate", [0,-2] select isDedicated];
			// Delete safezone
			_westsafezone setTriggerStatements [
				"!triggerActivated thisTrigger",
				"thisList apply {_x allowDamage true}; thisTrigger = false;",
				"thisTrigger spawn {sleep 1; deleteVehicle _this}"
			];
			// Destroy shields and turrets, activate core
			deleteVehicle _westShieldEffect;
			_westCore allowDamage true;

			// Notification
			[server, [_serverChannel, "BLUFOR carrier shields are down!"]] remoteExec ["customChat", allPlayers, true];
		};
		
		// Handle damage
		_westHull = _westHull - _missileValue;
		missionNamespace setVariable ["west_hull_hp", _westHull, true];
		[west, floor _westHull, 0] remoteExec ["CS_fnc_carrierStatsUpdate", [0,-2] select isDedicated];
	};

	// If hull reaches 0
	if (_westShields <= 0 && _westHull <= 0) then {
		[west, 0, 0] remoteExec ["CS_fnc_carrierStatsUpdate", [0,-2] select isDedicated];
		[server, [_serverChannel, "BLUFOR carrier hull destroyed!"]] remoteExec ["customChat", allPlayers, true];

		// Destroy in flight anti carrier missiles
		_missileArray apply {
			deleteVehicle _x
		};

		//Execute End Game
		[] remoteExec ["CS_fnc_gameEnd", 2];
	};
};

// If team to be damaged is EAST
if (_teamToBeDamaged == east) then {
	if (_eastShields > 0) then {
		_eastShields = _eastShields - _missileValue;
		missionNamespace setVariable ["east_shield_hp", _eastShields, true];
		[east, 100, floor _eastShields] remoteExec ["CS_fnc_carrierStatsUpdate", [0,-2] select isDedicated];
	};

	// If shield reaches 0
	if (_eastShields <= 0) then {
		// Update hud to 0 shields before stuff gets calculated
		if (_eastHull == 100) then {

			[east, 100, 0] remoteExec ["CS_fnc_carrierStatsUpdate", [0,-2] select isDedicated];
			deleteVehicle _eastSafeZone;
			[server, [_serverChannel, "OPFOR carrier shields are down!"]] remoteExec ["customChat", allPlayers, true];

			// Delete safezone
			_eastsafezone setTriggerStatements [
				"!triggerActivated thisTrigger",
				"thisList apply {_x allowDamage true}; thisTrigger = false;",
				"thisTrigger spawn {sleep 1; deleteVehicle _this}"
			];
			// Destroy shields and turrets, activate core
			deleteVehicle _eastShieldEffect;
			_eastCore allowDamage true;
		};
		
		// Handle damage
		_eastHull = _eastHull - _missileValue;
		missionNamespace setVariable ["east_hull_hp", _eastHull, true];
		[east, floor _eastHull, 0] remoteExec ["CS_fnc_carrierStatsUpdate", [0,-2] select isDedicated];
	};

	// If hull reaches 0
	if (_eastShields <= 0 && _eastHull <= 0) then {
		[east, 0, 0] remoteExec ["CS_fnc_carrierStatsUpdate", [0,-2] select isDedicated];
		[server, [_serverChannel, "OPFOR carrier hull destroyed!"]] remoteExec ["customChat", allPlayers, true];

		// Destroy in flight anti carrier missiles
		_missileArray apply {
			deleteVehicle _x
		};

		//Execute End Game
		[] remoteExec ["CS_fnc_gameEnd", 2];
	};
};