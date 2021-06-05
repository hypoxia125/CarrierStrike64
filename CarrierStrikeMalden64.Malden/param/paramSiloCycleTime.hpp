class SiloCycleTime
{
	title = "Silo Reload Time";
	values[] = {60, 120, 300, 600, 900};
	texts[] = {
		"1 Minute",
		"2 Minutes",
		"5 Minutes",
		"10 Minutes",
		"15 Minutes"
	};
	default = 120;
	function = CS_fnc_paramSiloCycleTime;
};