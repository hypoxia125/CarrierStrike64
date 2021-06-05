if !(isServer) exitWith {};

params ["_silo"];

[
	_silo,
	"Uplink to Anti-Carrier Missile Silo",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
	"((_target distance _this <= 10) && !(_target getVariable 'owner' == side group _this))",
	"(_target distance _caller <= 10)",
	{
		/* --------- Code on Action Start ---------- */

		[_this#0, _this#1] remoteExec ["CS_fnc_siloActionStarted", 2];
	},
	{
		/* ---------- Code on Each Tick ----------- */

		// Play sound for caller only
		playSound "readOutClick";
	},
	{
		/* ---------- Code on Action Completed -------------- */

		[_this#0, _this#1] remoteExec ["CS_fnc_siloActionCompleted", 2];
	},
	{
		//codeInterrupted
	},
	[],
	10, 0, false, false, true
] remoteExec ["BIS_fnc_holdActionAdd", [0, -2] select isDedicated, _silo];