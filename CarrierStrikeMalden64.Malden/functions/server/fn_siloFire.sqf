/* ----------------------------------------------------------------------------
Function: CS_fnc_siloFire

Description:
    Launches a missile at the provided target from provided silo

Parameters:
    silo - Object - Silo action is assigned to
	caller - Object - Unit that is using the action

Returns:
    _silo - silo action is assigned to
	_target - target missile was launched at

Author:
    Hypoxic
---------------------------------------------------------------------------- */

if !(isServer) exitWith {};

params [
	["_silo", objNull, [objNull]],
	["_target", objNull, [objNull]]
];

private _muzzle = currentMuzzle gunner _silo;
private _currentAmmo = _silo ammo _muzzle;

if (_currentAmmo < 1) then {
	_silo setVehicleAmmo 1
};

_silo setWeaponReloadingTime [gunner _silo, _muzzle, 0];
_silo fireAtTarget [_target, _muzzle];

[_silo, _target];