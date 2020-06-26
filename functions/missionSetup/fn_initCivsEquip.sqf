#include "component.hpp"
#define REPNIF0(var1,var2) if(count var2 > 0) then {var1 = var2}
#define APPENDUNIQUE(var1,var2) var1 = var1 + var2;var1 = var1 arrayIntersect var1


if (!(isClass (configFile >> "CfgPatches" >> "grad_civs_loadout"))) exitWith {
    INFO("@grad_civs (grad_civs_loadout) is not loaded, will not configure civilians");
};

private _islandType = [missionConfigFile >> "CfgIslands" >> worldName,"type",""] call BIS_fnc_returnConfigEntry;
if (_islandType == "") exitWith {ERROR("World is not defined in cfgIslands.")};

private _civCfg = missionConfigFile >> "CfgCivilians" >> _islandType;

private _clothes = [_civCfg,"clothes",[]] call BIS_fnc_returnConfigEntry;
private _headgear = [_civCfg,"headgear",[]] call BIS_fnc_returnConfigEntry;
private _faces = [_civCfg,"faces",[]] call BIS_fnc_returnConfigEntry;
private _goggles = [_civCfg,"goggles",[]] call BIS_fnc_returnConfigEntry;
private _backpacks = [_civCfg,"backpacks",[]] call BIS_fnc_returnConfigEntry;
private _vehicles = [_civCfg,"vehicles",[]] call BIS_fnc_returnConfigEntry;

private _userEquipmentCfg = missionConfigFile >> "CfgGradCivs" >> "userEquipment";
private _userClothes = [_userEquipmentCfg,"clothes",[]] call BIS_fnc_returnConfigEntry;
private _userHeadgear = [_userEquipmentCfg,"headgear",[]] call BIS_fnc_returnConfigEntry;
private _userFaces = [_userEquipmentCfg,"faces",[]] call BIS_fnc_returnConfigEntry;
private _userGoggles = [_userEquipmentCfg,"goggles",[]] call BIS_fnc_returnConfigEntry;
private _userBackpacks = [_userEquipmentCfg,"backpacks",[]] call BIS_fnc_returnConfigEntry;
private _userVehicles = [_userEquipmentCfg,"vehicles",[]] call BIS_fnc_returnConfigEntry;


private _replace = ([_userEquipmentCfg,"replace",0] call BIS_fnc_returnConfigEntry) == 1;
if (_replace) then {
    REPNIF0(_clothes,_userClothes);
    REPNIF0(_headgear,_userHeadgear);
    REPNIF0(_faces,_userFaces);
    REPNIF0(_goggles,_userGoggles);
    REPNIF0(_backpacks,_userBackpacks);
    REPNIF0(_vehicles,_userVehicles);
} else {
    APPENDUNIQUE(_clothes,_userClothes);
    APPENDUNIQUE(_headgear,_userHeadgear);
    APPENDUNIQUE(_faces,_userFaces);
    APPENDUNIQUE(_goggles,_userGoggles);
    APPENDUNIQUE(_backpacks,_userBackpacks);
    APPENDUNIQUE(_vehicles,_userVehicles);
};

[_clothes] call grad_civs_loadout_fnc_setClothes;
[_headgear] call grad_civs_loadout_fnc_setHeadgear;
[_faces] call grad_civs_loadout_fnc_setFaces;
[_goggles] call grad_civs_loadout_fnc_setGoggles;
[_backpacks] call grad_civs_loadout_fnc_setBackpacks;
[_vehicles] call grad_civs_voyage_fnc_setVehicles;
