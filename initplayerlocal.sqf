if (didJIP) then {
    [player] remoteExec ["grad_common_fnc_addJipToZeus",2,false];
};

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
grad_template_ratingEH = player addEventHandler ["HandleRating",{0}];

["hideHud", [false, false, true, true, true, false, false, false]] call ace_common_fnc_showHud; // fix for action menu crosshair info
