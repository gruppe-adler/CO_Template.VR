#include "script_component.hpp"

/* -----------------------------------------------------------------------------------------------
Function: GRAD_usage_fnc_doService

Description: Servicing and Reload Vehicles.

Parameters: [Vehiclename,(Optinal: true)]

            Optional: Refueling Gasoline for Server/HC Vehicles
                      - Default: false / for PlayerVehicles always true 

Returns: BOOL

Examples:
          _service = [CAR1] spawn GRAD_usage_fnc_doService;

Author: Fry

-------------------------------------------------------------------------------------------------- */
private ["_set_fuel","_vec_type","_driver","_magazines","_removed","_x","_count","_i","_config"];
params ["_vehicle","_set_fuel"];
If(isNil "_set_fuel")then{_set_fuel = false;};
If(local player)then{_set_fuel = true;};
_vec_type = typeOf _vehicle;

_driver = "";
If(local player)then{_driver = driver _vehicle;};

_magazines = getArray(configFile >> "CfgVehicles" >> _vec_type >> "magazines");

If(alive _vehicle)then
{
If(local player)then
{
_vehicle setfuel 0;
if(player == _driver)then
{
cutText ["Servicing... Please stand by...","PLAIN",4];
sleep 5;
cutText ["Reloading weapons ...","PLAIN",4];
};
};

If(count _magazines > 0)then
{
    _removed = [];
    {
If(!(_x in _removed))then
{
_vehicle removeMagazines (format["%1",_x]);
_removed = _removed + [_x];
};
    }forEach _magazines;
{
_vehicle addMagazine (format["%1", _x]);
    }forEach _magazines;
_vehicle setVehicleAmmo 1;
};
_count = count (configFile >> "CfgVehicles" >> _vec_type >> "Turrets");

If(_count > 0)then
{
for "_i" from 0 to (_count - 1) do
{
_config = (configFile >> "CfgVehicles" >> _vec_type >> "Turrets") select _i;
_magazines = getArray(_config >> "magazines");
_removed = [];

{
 if (!(_x in _removed))then
{
_vehicle removeMagazinesTurret [(format["%1",_x]),[_i]];
_removed = _removed + [_x];
};
}forEach _magazines;
{
 _vehicle addMagazineTurret [(format["%1",_x]),[_i]];
}forEach _magazines;
sleep 0.04;
};
};

If(local player)then
{
sleep 7;
   If(player == _driver)then{cutText ['Repairing ...','PLAIN',4];};
   _vehicle setDamage 0;
   sleep 5;
  if(player == _driver)then
{
cutText ['Refueling...','PLAIN',4];
   sleep 5;
   cutText ['Vehicle is ready','PLAIN',0.4];
  };
  };

If(_set_fuel)then
{
_vehicle setfuel 1;
};
};
true
