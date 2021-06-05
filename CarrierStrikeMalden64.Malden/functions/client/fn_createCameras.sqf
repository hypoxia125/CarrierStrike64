params ["_carrier", "_cameraPos"];

private _pos = getPosATL _cameraPos;
private _target = _carrier;

private _camera = "camera" camCreate _pos;
_camera camSetTarget _target;

_camera cameraEffect ["INTERNAL", "BACK"];
_camera camSetFov 0.9;
showCinemaBorder false;
_camera camCommit 0;