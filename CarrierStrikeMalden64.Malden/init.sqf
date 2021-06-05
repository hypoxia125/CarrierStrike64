call compileFinal preprocessFileLineNumbers "init\playerCountSetup.sqf";
call compileFinal preprocessFileLineNumbers "init\variables.sqf";
call compileFinal preprocessFileLineNumbers "init\teamSetupServer.sqf";
call compileFinal preprocessFileLineNumbers "init\siloSetupServer.sqf";
call compileFinal preprocessFileLineNumbers "init\weatherSetupServer.sqf";

call compileFinal preprocessFileLineNumbers "init\chatChannelSetupServer.sqf";

call compileFinal preprocessFileLineNumbers "init\createRespawnPositions.sqf";
if (isServer) then {
	[] spawn CS_fnc_leaderRespawnHandler;
	[] spawn CS_fnc_leaderCyclePool;
	["Initialize"] call BIS_fnc_dynamicGroups;
};

if !(isNull player) then {
	["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
};

[["carrierstrike", "tutorial"], 15, "", 35, "", true, true, true, true] call BIS_fnc_advHint;