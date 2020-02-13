[
	"Jules",
	"QRF on Foot", 
	{ 
	params ["_modulePosition"]; 
	[_modulePosition] spawn JULES_zeusModules_fnc_QRF_on_foot;  
	}
] call zen_custom_modules_fnc_register;

[
	"Jules",
	"QRF by Car", 
	{ 
	params ["_modulePosition"]; 
	[_modulePosition] spawn JULES_zeusModules_fnc_QRF_by_car; 
	}
] call zen_custom_modules_fnc_register; 