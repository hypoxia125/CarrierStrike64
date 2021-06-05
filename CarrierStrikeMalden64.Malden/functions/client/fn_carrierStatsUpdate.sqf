params ["_carrierTeam", "_hull", "_shield"];

private _carrierHUD = call {
	if (_carrierTeam == west) exitWith {
		"carrier_blue_stats"
	};
	if (_carrierTeam == east) exitWith {
		"carrier_red_stats"
	};
};

private _string = format ["Hull -  %1     Shields - %2", _hull, _shield];

private _display = uiNamespace getVariable "game_hud";
private _control = (missionNamespace getVariable "hash_hud") get "stats" get _carrierHUD;

(_display displayCtrl _control) ctrlSetText _string;

diag_log "Carrier HUD Updated";

true;