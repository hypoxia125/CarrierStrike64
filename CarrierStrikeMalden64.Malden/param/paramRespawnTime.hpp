class RespawnTime
{
	title = "Respawn Time";
	values[] = {5, 10, 15, 20, 30, 60};
	texts[] = {
		"5 Seconds",
		"10 Seconds",
		"15 Seconds",
		"20 Seconds",
		"30 Seconds",
		"60 Seconds"
	};
	default = 15;
	function = CS_fnc_paramRespawnTime;
};