if !(isServer) exitWith {};

[] spawn {
	waitUntil {time > 2};

	private _northOwner = missionNamespace getVariable "northOwner";
	private _southOwner = missionNamespace getVariable "southOwner";

	private _southRespawn = [_southOwner, carrier_s, "South Carrier"] call BIS_fnc_addRespawnPosition;
	carrier_s setVariable ["respawn", _southRespawn];


	private _northRespawn = [_northOwner, carrier_n, "North Carrier"] call BIS_fnc_addRespawnPosition;
	carrier_n setVariable ["respawn", _northRespawn];
};