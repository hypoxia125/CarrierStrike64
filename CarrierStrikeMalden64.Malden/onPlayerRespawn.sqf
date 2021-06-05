params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

private _server_channel = missionNamespace getVariable "server_channel";
_server_channel call CS_fnc_radioChannelAdd;
_server_channel call CS_fnc_disableCustomChannels;
private _silo_channel = missionNamespace getVariable "silo_channel";
_silo_channel call CS_fnc_radioChannelAdd;
_silo_channel call CS_fnc_disableCustomChannels;

call CS_fnc_disableDefaultChannels;

call CS_fnc_parachuteAddAction;

// Respawn position

if (_newUnit == leader group _newUnit) then {
	_newUnit call CS_fnc_findSpawnLocation;
};

if !(_newUnit == leader group _newUnit) then {
	if (_newUnit distance leader group _newUnit > 10) then {
		_newUnit call CS_fnc_findSpawnLocation;
	};
};

_newUnit call CS_fnc_addItemsBasedWeather;

//Start UI

"HUD" cutRsc ["CS_GAME_HUD", "PLAIN", -1];
[west, missionNamespace getVariable "west_hull_hp", missionNamespace getVariable "west_shield_hp"] call CS_fnc_carrierStatsUpdate;
[east, missionNamespace getVariable "east_hull_hp", missionNamespace getVariable "east_shield_hp"] call CS_fnc_carrierStatsUpdate;
[silo_1, silo_1 getVariable "owner"] call CS_fnc_siloHudUpdate;
[silo_2, silo_2 getVariable "owner"] call CS_fnc_siloHudUpdate;
[silo_3, silo_3 getVariable "owner"] call CS_fnc_siloHudUpdate;
if (currentPlayerCount > 16) then {
	[silo_4, silo_4 getVariable "owner"] call CS_fnc_siloHudUpdate;
	[silo_5, silo_5 getVariable "owner"] call CS_fnc_siloHudUpdate;
};


// Add unit traits
call CS_fnc_addTraits;

_newUnit call CS_fnc_addBoatTeleport;

private _return = getPosATL _newUnit;

_return;