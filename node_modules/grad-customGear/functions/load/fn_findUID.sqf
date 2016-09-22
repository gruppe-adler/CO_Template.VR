/*  Finds string in array of arrays
*
*   Params:
*   0:  array to search (array)
*   1:  string to look for (string)
*
*   Returns:
*   index if found, -1 if not found
*/

params ["_array", "_uid"];

_ID = -1;
{
  if (_x select 0 == _uid) exitWith {_ID = _forEachIndex};
} forEach _array;

_ID
