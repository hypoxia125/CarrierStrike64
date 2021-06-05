params ["_siloVar", "_team"];

private _silo = str _siloVar;
private _display = uiNamespace getVariable "game_hud";
private _hudHash = missionNamespace getVariable "hash_hud";

if (currentPlayerCount < 16) then {
	(_display displayCtrl (_hudHash get "silo" get "silo_4")) ctrlSetText "";
	(_display displayCtrl (_hudHash get "silo" get "silo_5")) ctrlSetText "";
	(_display displayCtrl (_hudHash get "silo" get "silo_2")) ctrlSetPosition [0.476375 * safezoneW + safezoneX, 0.024 * safezoneH + safezoneY, 0.04725 * safezoneW, 0.084 * safezoneH];
	(_display displayCtrl (_hudHash get "silo" get "silo_2")) ctrlCommit 0;
	(_display displayCtrl (_hudHash get "silo" get "silo_3")) ctrlSetPosition [0.586625 * safezoneW + safezoneX, 0.024 * safezoneH + safezoneY, 0.04725 * safezoneW, 0.084 * safezoneH];
	(_display displayCtrl (_hudHash get "silo" get "silo_3")) ctrlCommit 0;
};

private _teamcolor = _hudHash get "teamColor" get _team;
private _control = _hudHash get "silo" get _silo;
private _change = _hudHash get _teamColor get _silo;

(_display displayCtrl _control) ctrlSetText _change;

diag_log "HUD Updated";

true;