if !(isServer) exitWith {};

private _silos = silos;

_silos apply {
    _x params ["_silo", "_name"];
    
    _silo allowDamage false;
    // set silo names
    _silo setVariable ["name", _name, true];
    
    // set default silo teams
    _silo setVariable ["owner", independent, true];
    
    // create silo action
    _silo call CS_fnc_createSiloAction;
    
    // create silo projectile event handler
    _silo call CS_fnc_missileEventHandler;
};

diag_log "siloSetupServer.sqf success"