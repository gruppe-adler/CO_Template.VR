#include "component.hpp"

_blugroups = [];
_opfgroups = [];
_indgroups = [];

{
    if ((leader _x) in playableUnits) then {
        switch (side _x) do {
            case west: {_blugroups pushBack _x};
            case east: {_opfgroups pushBack _x};
            case independent: {_indgroups pushBack _x};
            default {WARNING(format["Could not find side of group: %1", _x])};
        };
    };
} forEach allGroups;

[_blugroups,_opfgroups,_indgroups]
