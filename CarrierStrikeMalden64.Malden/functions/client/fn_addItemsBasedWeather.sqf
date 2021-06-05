params ["_unit"];

private _moonPhase = sunOrMoon;

private _nightVisionClass = call {
	if (side group _unit == west) exitWith {
		"NVGoggles"
	};
	if (side group _unit == east) exitWith {
		"NVGoggles_OPFOR"
	};
};

private _flashlightClass = "acc_flashlight";
private _laserClass = "acc_pointer_IR";

private ["_return"];

if (_moonPhase < 1) then {
	_unit linkItem _nightVisionClass;
	_unit addPrimaryWeaponItem _flashlightClass;
	_return = [_nightVisionClass, _flashlightClass];
};

if (_moonPhase >= 1) then {
	_unit unlinkItem _nightVisionClass;
	_unit removePrimaryWeaponItem _flashlightClass;
	_unit removePrimaryWeaponItem _laserClass;
	_return = ["NightVisionRemoved", "FlashLightRemoved"];
};

_return;