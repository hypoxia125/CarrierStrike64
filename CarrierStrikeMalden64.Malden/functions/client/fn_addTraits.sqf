//Remove all traits

{
	player setUnitTrait [_x, false];
} forEach ["engineer", "explosiveSpecialist", "medic"];

private _respawnCombo = uiNamespace getVariable (["BIS_RscRespawnControlsMap_ctrlComboLoadout", "BIS_RscRespawnControlsSpectate_ctrlComboLoadout"] select (uiNamespace getVariable ["BIS_RscRespawnControlsSpectate_shown", false]));
private _respawnTemplateDisplayName = _respawnCombo lbText (lbCurSel _respawnCombo);

sleep 2;

if (_respawnTemplateDisplayName == "Medic") then {
	player setUnitTrait ["medic", true];
};

if (_respawnTemplateDisplayName == "Engineer") then {
	player setUnitTrait ["engineer", true];
	player setUnitTrait ["explosiveSpecialist", true];
};