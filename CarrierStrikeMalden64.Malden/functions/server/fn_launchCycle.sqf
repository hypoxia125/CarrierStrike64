/* ----------------------------------------------------------------------------
Function: CS_fnc__cycleTime

Description:
    Scheduled launch cycle 

Parameters:
    silo - Object - Silo action is assigned to

Returns:
    _handle - handle of the spawned script

Author:
    Hypoxic
---------------------------------------------------------------------------- */

if !(isServer) exitWith {};

params [["_silo", objNull, [objNull]]];

// Cancel if the cycle has already been started
if (_silo getVariable ["siloCycle_On", false]) exitWith {};

//Create the scheduled environment
private _handle = _this spawn {

    params ["_silo"];

    _silo setVariable ["siloCycle_On", true];

    // Start cycle loop
    while {true} do {

        private _team = _silo getVariable "owner";
        if (_team == independent) exitWith {_silo setVariable ["siloCycle_On", false]};

        private _target = call {
            if (_team == west) exitWith {
                if (target_n getVariable "owner" == west) exitWith {
                    target_s
                };
                if (target_s getVariable "owner" == west) exitWith {
                    target_n
                };
            };
            if (_team == east) exitWith {
                if (target_n getVariable "owner" == east) exitWith {
                    target_s
                };
                if (target_s getVariable "owner" == east) exitWith {
                    target_n
                }
            };
        };
        
        // Begin Launch
        private _siloName = toUpperANSI (_silo getVariable "name");
        
        [_silo, ["Alarm_blufor", 300, 1, false, 0]] remoteExec ["say3D", (allplayers select {_x distance _silo <= 300})];
        sleep 3;
        [_silo, ["faction_opfor_05_o_ground_EXO_0", 300, 1, false, 0]] remoteExec ["say3D", (allplayers select {_x distance _silo <= 300})];
        [server, [missionNamespace getVariable "silo_channel", format ["%1: TARGET ACQUIRED - INITIATING LAUNCH SEQUENCE", _siloName]]] remoteExec ["customChat", allPlayers];
        sleep 2;
        [_silo, _target] call CS_fnc_silofire;
        
        [server, [missionNamespace getVariable "silo_channel", format ["%1: %2 SECONDS UNTIL NEXT LAUNCH", _siloName, (missionNamespace getVariable ["siloCycleTime", 300])]]] remoteExecCall ["customChat", allPlayers];

        sleep (missionNamespace getVariable ["siloCycleTime", 300]);
    };
};

_handle