if !(isServer) exitWith {};

params ["_carrier"];

scriptName "explosions";

private ["_positions", "_cameraPos"];
if (_carrier == carrier_n) then {
	_positions = missionNamespace getVariable "carrier_n_explosions";
	_cameraPos = carrier_n_camera;
};
if (_carrier == carrier_s) then {
	_positions = missionNamespace getVariable "carrier_s_explosions";
	_cameraPos = carrier_s_camera;
};

//Damage handler to keep explosions from killing people

[] remoteExecCall ["CS_fnc_explosionProtection", (allPlayers select {_x distance _carrier <= 300})];

["BackgroundTrack03_F"] remoteExecCall ["playMusic", (allPlayers select {_x distance _carrier <= 300})];

[_carrier] spawn {
	params ["_carrier"];

	while {missionNamespace getVariable ["playAlarm", true]} do {
		["Alarm"] remoteExecCall ["playSound", (allPlayers select {_x distance _carrier <= 300})];
		sleep 1;
	};
};

[_carrier, _positions] spawn {

	params ["_carrier", "_positions"];
	while {true} do {

		private _explosion = createVehicle ["Bo_GBU12_LGB", [0,0,0], [], 0, "NONE"];
		_explosion allowDamage false;
		_explosion hideObjectGlobal true;
		_explosion setPosATL selectRandom _positions;
		_explosion setDamage 1;
	
		sleep (random 2);
	};
};

sleep 30;

missionNamespace setVariable ["playAlarm", false];
[_carrier, _cameraPos] remoteExec ["CS_fnc_createCameras", allPlayers, true];

sleep 5;

true;