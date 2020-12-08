params ["", "_duration", ["_titleText", []], ["_blendOut", -1], ["_blendIn", -1]];

if (_blendOut >= 0) then {
    cutText ["", "BLACK OUT", _blendOut];
} else {
	_blendOut = 0;
};

[{
	params ["_titleText", "_blendIn", "_blendOut", "_duration"];
	_titleText params ["_titleTextType"];

	switch (_titleTextType) do {
		case "PLAIN": {
			_titleText params ["", "_text"];
			_text call BIS_fnc_titleText;
		};
		case "DYNAMIC": {
			_titleText params ["", "_text", ["_x", -1], ["_y", -1], ["_duration", 4], ["_fadeInTime", 1], ["_deltaY", 0], ["_rscLayer", -1]];

			if (_rscLayer > 0) then {
				[_text, _x, _y, _duration, _fadeInTime, _deltaY, _rscLayer] spawn BIS_fnc_dynamicText;
			} else {
				[_text, _x, _y, _duration, _fadeInTime, _deltaY] spawn BIS_fnc_dynamicText;
			};
			
		};
		case "TYPETEXT": {
			_titleText params ["", "_text"];

			[_text] spawn BIS_fnc_typeText;
		};
		case "TYPETEXT2": {
			_titleText params ["", "_text"];

			[_text] spawn BIS_fnc_typeText2;
		};
		case "INFOTEXT": {
			_titleText params ["", "_text"];
			[_text ] spawn BIS_fnc_infoText;
		};
		default {};
	};

	if (_blendIn >= 0) then {
		[
			{
				params ["_blendIn"];

				cutText ["", "BLACK IN", _blendIn];
			},
			[_blendIn],
			(_duration - _blendIn - _blendOut)
		] call CBA_fnc_waitAndExecute;
		
	};

}, [_titleText, _blendIn, _blendOut, _duration], _blendOut] call CBA_fnc_waitAndExecute;