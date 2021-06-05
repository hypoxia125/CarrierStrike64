if !(isServer) exitWith {};

private _channelname = "GAME MESSAGES";
private _channelID = radioChannelCreate [[0.85, 0.4, 0, 1], _channelname, "GAME MESSAGE", [server]];
_channelID remoteExec ["hyp_fnc_radioChannelAdd", [0, -2] select isDedicated, _channelname];
[_channelID, false, false] remoteExecCall ["hyp_fnc_disableCustomChannels", [0,-2] select isDedicated, _channelname];
missionnamespace setVariable ["server_channel", _channelID, true];

private _channelname2 = "SILOS";
private _channelID2 = radioChannelCreate [[0,1,0,1], _channelname, "SILOS", [server]];
_channelID2 remoteExecCall ["hyp_fnc_radioChannelAdd", [0, -2] select isDedicated, _channelname];
[_channelID2, false, false] remoteExecCall ["hyp_fnc_disableCustomChannels", [0,-2] select isDedicated, _channelname2];
missionNamespace setVariable ["silo_channel", _channelID2, true];

remoteExecCall ["hyp_fnc_disableDefaultChannels", [0,-2] select isDedicated, true];

true;