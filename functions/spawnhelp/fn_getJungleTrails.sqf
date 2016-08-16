// NOCH NICHT FERTIG: MUSS NOCH EINGETRAGE UND ERTIG ANGEPASST WERDEN

TAG_fnc_filterJungleRoads = {
     params ['_pos','_radius'];
     private _array_roadListFiltered = [];
     {
          if ((typeName _x) isEqualTo 'OBJECT') then {

_bbox = boundingboxReal _x;
_bbox params ["_a","_b"];
_size = _a distance _b;
if (_size < 25) then {_array_roadListFiltered pushBack _x};

          };
     } forEach (_pos nearRoads _radius);
     _array_roadListFiltered;
};
