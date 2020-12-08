GRAD_introCam_playOnStart = false;							//Ob das das intro bei Spielstart automatisch abgespielt werden soll
GRAD_introCam_allowForJIP = false;							//Ob JIP Spieler das Intro sehen sollen

/*
	SHOT TYPES:
	["CAMERA", duration, pos, target, fov (optional), showBorders (optional), fade (optional), fadeTime (optional), fadeText (optional), effectCam (optional), effectCamType (optional)],
	["MOVE", duration, pos, target, fov (optional), offset (optional), commitTime (optional)],
	["ATTACH", duration, object, target, fov (optional), offset (optional)],
	["ROTATE", duration, target, height (optional), radius (optional), startingAngle (optional), endAngle (optional), clockwise (optional), rise (optional)]
    ["BLEND",  duration, textType (optional), blendOut (optional), blendIn (optional), extension]

* CAM PARAMETERS:
* Duration <NUMBER>
* Positions <OBJECT / POSITION>
* Target <OBJECT / POSITION>
* Zoom Factor <NUMBER> (default: 1)
* Show Borders <BOOLEAN> (default: true)
* Fade <NOOLEAN> (default: true)
* Fade Time <NUMBER> (default: 1)
* Fade Text <STRING> (default: "")
* Camera Effect <STRING> (default: "internal")
* Camera Effect Type <STRING> (default: "BACK")
*/

GRAD_introCam_shotDefinitions = [

];
