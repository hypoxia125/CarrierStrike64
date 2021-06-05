class CS_B_AntiTank
{
  displayName = "Anti Tank";
  icon = "a3\Ui_f\data\IGUI\cfg\simpleTasks\types\target_ca.paa";
  role = "Heavy";
  show = "true";
  uniformClass = "U_B_CombatUniform_mcam";
  backpack = "B_Kitbag_rgr";
  weapons[] = {"SMG_03C_black", "launch_NLAW_F", "Throw", "Put"};
  magazines[] = {"Chemlight_blue", "SmokeShell", "SmokeShell", "MiniGrenade", "MiniGrenade", "50Rnd_570x28_SMG_03", "50Rnd_570x28_SMG_03", "50Rnd_570x28_SMG_03", "50Rnd_570x28_SMG_03", "50Rnd_570x28_SMG_03", "NLAW_F", "NLAW_F"};
  items[] = {"FirstAidKit"};
  linkedItems[] = {"V_PlateCarrier1_rgr", "H_HelmetSpecB", "G_Combat", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "", "", "", "", "", "", "", ""};
};

class CS_O_AntiTank
{
  displayName = "Anti Tank";
  icon = "a3\Ui_f\data\IGUI\cfg\simpleTasks\types\target_ca.paa";
  role = "Heavy";
  show = "true";
  uniformClass = "U_O_CombatUniform_ocamo";
  backpack = "B_AssaultPack_ocamo";
  weapons[] = {"SMG_03C_black", "launch_RPG32_F", "Throw", "Put"};
  magazines[] = {"50Rnd_570x28_SMG_03", "50Rnd_570x28_SMG_03", "50Rnd_570x28_SMG_03", "50Rnd_570x28_SMG_03", "50Rnd_570x28_SMG_03", "RPG32_F", "RPG32_F"};
  items[] = {};
  linkedItems[] = {"V_TacVest_khk", "H_HelmetLeaderO_ocamo", "", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "", "", "", "", "", "", "", ""};
};


class CS_B_Assault
{
  displayName = "Assault";
  icon = "a3\Ui_f\data\IGUI\cfg\simpleTasks\types\attack_ca.paa";
  role = "Heavy";
  show = "true";
  uniformClass = "U_B_CombatUniform_mcam";
  backpack = "B_AssaultPack_rgr";
  weapons[] = {"arifle_MX_GL_F", "Throw", "Put"};
  magazines[] = {"Chemlight_blue", "SmokeShell", "SmokeShell", "MiniGrenade", "MiniGrenade", "30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell"};
  items[] = {"FirstAidKit"};
  linkedItems[] = {"V_PlateCarrier1_rgr", "H_HelmetSpecB", "G_Combat", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "", "", "optic_Hamr", "", "", "", "", ""};
};

class CS_O_Assault
{
  displayName = "Assault";
  icon = "a3\Ui_f\data\IGUI\cfg\simpleTasks\types\attack_ca.paa";
  role = "Heavy";
  show = "true";
  uniformClass = "U_O_CombatUniform_ocamo";
  backpack = "B_FieldPack_ocamo";
  weapons[] = {"arifle_Katiba_GL_F", "Throw", "Put"};
  magazines[] = {"Chemlight_red", "SmokeShell", "SmokeShell", "MiniGrenade", "MiniGrenade", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell"};
  items[] = {"FirstAidKit"};
  linkedItems[] = {"V_TacVest_khk", "H_HelmetLeaderO_ocamo", "", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "", "", "optic_MRCO", "", "", "", "", ""};
};


class CS_B_Engineer
{
  displayName = "Engineer";
  icon = "a3\Ui_f\data\IGUI\cfg\simpleTasks\types\repair_ca.paa";
  role = "Light";
  show = "true";
  uniformClass = "U_B_CombatUniform_mcam_tshirt";
  backpack = "B_Kitbag_mcamo";
  weapons[] = {"arifle_MXC_F", "Throw", "Put"};
  magazines[] = {"Chemlight_blue", "SmokeShell", "SmokeShell", "MiniGrenade", "MiniGrenade", "30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag", "ATMine_Range_Mag", "ATMine_Range_Mag"};
  items[] = {"FirstAidKit", "ToolKit", "MineDetector"};
  linkedItems[] = {"V_TacVest_khk", "H_Watchcap_khk", "", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "", "", "", "", "", "", "", ""};
};

class CS_O_Engineer
{
  displayName = "Engineer";
  icon = "a3\Ui_f\data\IGUI\cfg\simpleTasks\types\repair_ca.paa";
  role = "Light";
  show = "true";
  uniformClass = "U_O_CombatUniform_ocamo";
  backpack = "B_Kitbag_cbr";
  weapons[] = {"arifle_Katiba_C_F", "Throw", "Put"};
  magazines[] = {"Chemlight_red", "SmokeShell", "SmokeShell", "MiniGrenade", "MiniGrenade", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "ATMine_Range_Mag", "ATMine_Range_Mag"};
  items[] = {"FirstAidKit", "ToolKit", "MineDetector"};
  linkedItems[] = {"V_HarnessO_brn", "H_Watchcap_cbr", "", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "", "", "", "", "", "", "", ""};
};


class CS_B_Medic
{
  displayName = "Medic";
  icon = "a3\Ui_f\data\IGUI\cfg\simpleTasks\types\heal_ca.paa";
  role = "Light";
  show = "true";
  uniformClass = "U_B_CombatUniform_mcam_tshirt";
  backpack = "B_AssaultPack_rgr";
  weapons[] = {"arifle_MX_F", "Throw", "Put"};
  magazines[] = {"Chemlight_blue", "SmokeShell", "SmokeShell", "MiniGrenade", "MiniGrenade", "30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag", "30Rnd_65x39_caseless_mag"};
  items[] = {"FirstAidKit", "FirstAidKit", "Medikit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit"};
  linkedItems[] = {"V_TacVest_oli", "H_Booniehat_mcamo", "G_Spectacles", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "", "", "optic_Aco", "", "", "", "", ""};
};

class CS_O_Medic
{
  displayName = "Medic";
  icon = "a3\Ui_f\data\IGUI\cfg\simpleTasks\types\heal_ca.paa";
  role = "Light";
  show = "true";
  uniformClass = "U_O_CombatUniform_ocamo";
  backpack = "B_FieldPack_ocamo";
  weapons[] = {"arifle_Katiba_F", "Throw", "Put"};
  magazines[] = {"Chemlight_red", "SmokeShell", "SmokeShell", "MiniGrenade", "MiniGrenade", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green"};
  items[] = {"FirstAidKit", "FirstAidKit", "Medikit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit"};
  linkedItems[] = {"V_HarnessO_brn", "H_Cap_brn_SPECOPS", "G_Spectacles_Tinted", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "", "", "optic_ACO_grn", "", "", "", "", ""};
};


class CS_B_Sniper
{
  displayName = "Sniper";
  icon = "a3\Ui_f\data\IGUI\cfg\simpleTasks\types\kill_ca.paa";
  role = "Light";
  show = "true";
  uniformClass = "U_B_GhillieSuit";
  backpack = "B_AssaultPack_rgr";
  weapons[] = {"srifle_LRR_camo_F", "hgun_P07_F", "Rangefinder", "Throw", "Put"};
  magazines[] = {"Chemlight_blue", "SmokeShell", "SmokeShell", "MiniGrenade", "MiniGrenade", "7Rnd_408_Mag", "7Rnd_408_Mag", "7Rnd_408_Mag", "7Rnd_408_Mag", "7Rnd_408_Mag", "16Rnd_9x21_Mag", "16Rnd_9x21_Mag"};
  items[] = {"FirstAidKit"};
  linkedItems[] = {"V_TacVest_oli", "", "", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "", "", "optic_LRPS", "", "", "", "", ""};
};

class CS_O_Sniper
{
  displayName = "Sniper";
  icon = "a3\Ui_f\data\IGUI\cfg\simpleTasks\types\kill_ca.paa";
  role = "Light";
  show = "true";
  uniformClass = "U_O_GhillieSuit";
  backpack = "B_FieldPack_ocamo";
  weapons[] = {"srifle_GM6_camo_F", "Rangefinder", "Throw", "Put"};
  magazines[] = {"Chemlight_red", "Chemlight_red", "SmokeShell", "SmokeShell", "MiniGrenade", "MiniGrenade", "5Rnd_127x108_Mag", "5Rnd_127x108_Mag", "5Rnd_127x108_Mag", "5Rnd_127x108_Mag"};
  items[] = {"FirstAidKit"};
  linkedItems[] = {"V_Chestrig_khk", "", "", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "", "", "optic_LRPS", "", "", "", "", ""};
};


class CS_B_SpecOps
{
  displayName = "Spec Ops";
  icon = "a3\Ui_f\data\IGUI\cfg\simpleTasks\types\scout_ca.paa";
  role = "Light";
  show = "true";
  uniformClass = "U_B_CTRG_3";
  backpack = "B_TacticalPack_blk";
  weapons[] = {"arifle_MXC_Black_F", "Binocular", "Throw", "Put"};
  magazines[] = {"Chemlight_blue", "SmokeShell", "SmokeShell", "MiniGrenade", "MiniGrenade", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "30Rnd_65x39_caseless_black_mag", "DemoCharge_Remote_Mag", "DemoCharge_Remote_Mag", "DemoCharge_Remote_Mag", "DemoCharge_Remote_Mag"};
  items[] = {"FirstAidKit"};
  linkedItems[] = {"V_TacVest_oli", "H_Beret_02", "G_Aviator", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "muzzle_snds_H", "", "optic_Aco", "", "", "", "", ""};
};

class CS_O_SpecOps
{
  displayName = "Spec Ops";
  icon = "a3\Ui_f\data\IGUI\cfg\simpleTasks\types\scout_ca.paa";
  role = "Light";
  show = "true";
  uniformClass = "U_O_SpecopsUniform_ocamo";
  backpack = "B_TacticalPack_ocamo";
  weapons[] = {"arifle_Katiba_C_F", "Binocular", "Throw", "Put"};
  magazines[] = {"Chemlight_red", "SmokeShell", "SmokeShell", "MiniGrenade", "MiniGrenade", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "30Rnd_65x39_caseless_green", "DemoCharge_Remote_Mag", "DemoCharge_Remote_Mag", "DemoCharge_Remote_Mag", "DemoCharge_Remote_Mag"};
  items[] = {"FirstAidKit"};
  linkedItems[] = {"V_Chestrig_khk", "H_Beret_CSAT_01_F", "G_Aviator", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "muzzle_snds_H", "", "optic_ACO_grn", "", "", "", "", ""};
};


class CS_B_Support
{
  displayName = "Support";
  icon = "a3\Ui_f\data\IGUI\cfg\simpleTasks\types\rearm_ca.paa";
  role = "Heavy";
  show = "true";
  uniformClass = "U_B_CombatUniform_mcam";
  backpack = "B_AssaultPack_rgr";
  weapons[] = {"LMG_Mk200_F", "Throw", "Put"};
  magazines[] = {"Chemlight_blue", "SmokeShell", "SmokeShell", "MiniGrenade", "MiniGrenade", "200Rnd_65x39_cased_Box_Tracer", "200Rnd_65x39_cased_Box_Tracer", "200Rnd_65x39_cased_Box_Tracer", "200Rnd_65x39_cased_Box_Tracer"};
  items[] = {"FirstAidKit"};
  linkedItems[] = {"V_PlateCarrier1_rgr", "H_HelmetSpecB", "G_Combat", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "", "", "optic_Holosight", "bipod_01_F_snd", "", "", "", ""};
};


class CS_O_Support
{
  displayName = "Support";
  icon = "a3\Ui_f\data\IGUI\cfg\simpleTasks\types\rearm_ca.paa";
  role = "Heavy";
  show = "true";
  uniformClass = "U_O_CombatUniform_ocamo";
  backpack = "B_FieldPack_ocamo";
  weapons[] = {"LMG_Zafir_F", "Throw", "Put"};
  magazines[] = {"Chemlight_red", "SmokeShell", "SmokeShell", "MiniGrenade", "MiniGrenade", "150Rnd_762x54_Box", "150Rnd_762x54_Box", "150Rnd_762x54_Box", "150Rnd_762x54_Box"};
  items[] = {"FirstAidKit", "FirstAidKit"};
  linkedItems[] = {"V_TacVest_khk", "H_HelmetLeaderO_ocamo", "", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "", "", "optic_Holosight", "", "", "", "", ""};
};

class CS_B_AntiAir
{
  displayName = "Anti Air";
  icon = "a3\Ui_f\data\IGUI\cfg\simpleTasks\types\plane_ca.paa";
  role = "Heavy";
  show = "true";
  uniformClass = "U_B_CombatUniform_mcam";
  backpack = "B_Kitbag_rgr";
  weapons[] = {"SMG_03C_black", "launch_B_Titan_F", "Throw", "Put"};
  magazines[] = {"Chemlight_blue", "SmokeShell", "SmokeShell", "MiniGrenade", "MiniGrenade", "50Rnd_570x28_SMG_03", "50Rnd_570x28_SMG_03", "50Rnd_570x28_SMG_03", "50Rnd_570x28_SMG_03", "50Rnd_570x28_SMG_03", "Titan_AA", "Titan_AA"};
  items[] = {"FirstAidKit"};
  linkedItems[] = {"V_PlateCarrier1_rgr", "H_HelmetSpecB", "G_Combat", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "", "", "", "", "", "", "", ""};
};

class CS_O_AntiAir
{
  displayName = "Anti Air";
  icon = "a3\Ui_f\data\IGUI\cfg\simpleTasks\types\plane_ca.paa";
  role = "Heavy";
  show = "true";
  uniformClass = "U_O_CombatUniform_ocamo";
  backpack = "B_FieldPack_ocamo";
  weapons[] = {"SMG_03C_black", "launch_O_Titan_F", "Throw", "Put"};
  magazines[] = {"50Rnd_570x28_SMG_03", "50Rnd_570x28_SMG_03", "50Rnd_570x28_SMG_03", "50Rnd_570x28_SMG_03", "50Rnd_570x28_SMG_03", "Titan_AA", "Titan_AA"};
  items[] = {};
  linkedItems[] = {"V_TacVest_khk", "H_HelmetLeaderO_ocamo", "", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "", "", "", "", "", "", "", ""};
};