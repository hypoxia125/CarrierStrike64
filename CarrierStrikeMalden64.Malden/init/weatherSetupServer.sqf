if !(isServer) exitWith {};

// Local things

[0, random 1] remoteExec ["setGusts", 0, true];
[0, random 1] remoteExec ["setOvercast", 0, true];
[0, random 1] remoteExec ["setWaves", 0, true];

//Global things

setDate [2142, floor (random 12), floor (random 28), floor (random 24), floor (random 60)];
0 setFog [random 0.3, 0.1, 0];
0 setLightnings random 1;
0 setRain random 1;
0 setRainbow random 1;
setWind [random 360, random 360, false];
0 setWindForce random 1;
0 setWindStr random 1;

//Skip Time

private _date = date;
skipTime 24;
setDate _date;

diag_log "weatherSetupServer.sqf success";