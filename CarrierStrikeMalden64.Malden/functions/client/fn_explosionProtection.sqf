if (isNull player) exitWith {};

player addEventHandler [
	"HandleDamage", {
		params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint"];

		diag_log format ["'%1' - source, '%2' - projectile, '%3' - damage", _source, _projectile, _damage];

		if (_source == _unit || _source == objnull || _projectile == "Bo_GBU12_LGB") then {
			_damage = 0;
		};

		diag_log format ["'%1' resulting damage after calculation", _damage];
		_damage;
	}
];