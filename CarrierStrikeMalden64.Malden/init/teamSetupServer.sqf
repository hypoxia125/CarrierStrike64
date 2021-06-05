if !(isServer) exitWith {};

/* -------------- TEAM HP ------------------- */

missionNamespace setVariable ["west_hull_hp", 100, true];
missionNamespace setVariable ["west_shield_hp", 100, true];
missionNamespace setVariable ["east_hull_hp", 100, true];
missionNamespace setVariable ["east_shield_hp", 100, true];

/* ------------ TEAM SELECTION ----------------- */

private _sides = [west, east];
private _southOwner = _sides deleteAt random 1; 
private _northOwner = _sides # 0;

missionNamespace setVariable ["northOwner", _northOwner, true];
missionNamespace setVariable ["southOwner", _southOwner, true];

/* ------------ NORTH CARRIER ------------- */

// Variables
[carrier_n, carrier_n_core, carrier_n_shield, carrier_n_safeZone] apply {
	_x setVariable ["owner", _northOwner, true];
};

// Flag
private _northFlagType = ["flag_CSAT", "flag_NATO"] select (_northOwner == west);
private _northFlag = createMarkerLocal ["northFlag", carrier_n];
_northFlag setMarkerShapeLocal "icon";
_northFlag setMarkerType _northFlagType;

// Create target
target_n = createvehicle ["laserTargetW", [0,0,0], [], 0, "NONE"];
target_n attachTo [carrier_n_targetPos, [0,0,0]];
target_n setVariable ["owner", _northOwner];
independent ReportRemoteTarget [target_n, 99999999];

// Vehicles
carrier_n call CS_fnc_carrierVehicleRespawns;

/* --------------- SOUTH CARRIER -------------- */

// Variables
[carrier_s, carrier_s_core, carrier_s_shield, carrier_s_safeZone] apply {
	_x setVariable ["owner", _southOwner, true];
};

// Flag
private _southFlagType = ["flag_CSAT", "flag_NATO"] select (_southOwner == west);
private _southFlag = createMarkerLocal ["southFlag", carrier_s];
_southFlag setMarkerShapeLocal "icon";
_southFlag setMarkerType _southFlagType;

// Create target
target_s = createvehicle ["laserTargetW", [0,0,0], [], 0, "NONE"];
target_s attachTo [carrier_s_targetPos, [0,0,0]];
target_s setVariable ["owner", _southOwner];

independent ReportRemoteTarget [target_s, 99999999];

// Vehicles
carrier_s call CS_fnc_carrierVehicleRespawns;

/* ---------------- Carrier Shields -------------- */

private _westColor = "#(argb,8,8,3)color(0,0.1,1,0.5,ca)";
private _eastColor = "#(argb,8,8,3)color(1,0,0,0.5,ca)";
private _northColor = call {
	if (_northOwner == west) exitWith {
		_westColor
	};
	if (_northOwner == east) exitWith {
		_eastColor
	};
};
private _southColor = call {
	if (_southOwner == west) exitWith {
		_westColor
	};
	if (_southOwner == east) exitWith {
		_eastColor
	};
};
carrier_n_shield setObjectTextureGlobal [0, _northColor];
carrier_n_shield setVariable ["owner", _northOwner];
carrier_s_shield setObjectTextureGlobal [0, _southColor];
carrier_s_shield setVariable ["owner", _southOwner];

/* ---------------- Reactor Core -------------------- */

carrier_n_core setVariable ["owner", _northOwner];
carrier_s_core setVariable ["owner", _southOwner];

{
	_x addEventHandler ["HandleDamage", {
		params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint"];

		if (side group _instigator == _unit getVariable "owner") then {
			_damage = 0;
		};
		diag_log format ["Instigator = %1 | Projectile = %2 | Damage = %3", _instigator, _projectile, _damage];
		_damage;
	}];
} forEach [carrier_n_core, carrier_s_core];

/* ---------------- Safe Zones ------------------------ */

carrier_n_safeZone setVariable ["owner", _northOwner];
carrier_s_safeZone setVariable ["owner", _southOwner];

/* ---------------- Respawn Kits ---------------------- */

private _westKits = [
	"CS_B_AntiTank",
	"CS_B_Assault",
	"CS_B_Engineer",
	"CS_B_Medic",
	"CS_B_Sniper",
	"CS_B_SpecOps",
	"CS_B_Support",
	"CS_B_AntiAir"
];

private _eastKits = [
	"CS_O_AntiTank",
	"CS_O_Assault",
	"CS_O_Engineer",
	"CS_O_Medic",
	"CS_O_Sniper",
	"CS_O_SpecOps",
	"CS_O_Support",
	"CS_O_AntiAir"
];

_westKits apply {
	[west, _x] call BIS_fnc_addRespawnInventory;
};
_eastKits apply {
	[east, _x] call BIS_fnc_addRespawnInventory;
};

diag_log "teamSetupServer.sqf success";