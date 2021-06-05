params [["_damage", 5]];

if !(_damage isEqualType 0) then {_damage = 5};

if (isServer) then {

	missile_damage = _damage;
};