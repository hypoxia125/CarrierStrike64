/* ----------------------------------------------------------------------------
Function: CS_fnc_missileEventHandler

Description:
    Handles the code after the launch of a missile at a silo

Parameters:
    silo - Object - Silo action is assigned to

Returns:
    True - if successful

Author:
    Hypoxic
---------------------------------------------------------------------------- */

if !(isServer) exitWith {};

params [["_silo", objNull, [objNull]]];

_silo addEventHandler ["fired", {
    _this spawn {

        params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];

		// Missile Marker
		private _index = uiNamespace getVariable ["markerIndex", 0];
		private _marker = createMarkerLocal [str _index, getPosATL _projectile];
		_marker setMarkerShapeLocal "icon";
		_marker setMarkerTypeLocal "mil_dot";
		_marker setMarkerTextLocal "Missile";
		_marker setMarkerColorLocal "ColorOrange";

		_index = _index + 1;
		if (_index == 100) then {_index = 0};
		uiNamespace setVariable ["markerIndex", _index];

		// Update marker every 0.1 seconds
		[_projectile, _marker] spawn {

			params ["_projectile", "_marker"];
			while {alive _projectile} do {
				_marker setMarkerPos (getPosATL _projectile);
				sleep 0.1;
			};
			deleteMarker _marker;
		};

		// Handle missile
		private _missileArray = missionNamespace getVariable ["missileArray", []];
		_missileArray pushBack _projectile;
		_missileArray = _missileArray select {alive _x};
		missionNamespace setVariable ["missileArray", _missileArray];

		// Wait until the missile reaches a carrier
        waitUntil {
            _projectile distance target_n < 50 ||
            _projectile distance target_s < 50
        };

		// Find out who is going to be damaged
		private _northTargetOwner = target_n getVariable "owner";
		private _southTargetOwner = target_s getVariable "owner";

        private _teamToBeDamaged = call {
            if (_projectile distance target_n < 50) exitWith {_northTargetOwner};
            if (_projectile distance target_s < 50) exitWith {_southTargetOwner};
        };

        _teamToBeDamaged call CS_fnc_handleCarrierDamage;
    };
}];

true;