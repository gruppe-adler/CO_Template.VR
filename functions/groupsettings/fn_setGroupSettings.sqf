/*  Sets group names and radio channels
*
*/

#include "component.hpp"

_allgroups = [] call GRAD_groupsettings_fnc_findPlayableGroups;

if (isServer) then {
    [_allGroups] call GRAD_groupsettings_fnc_setDynamicGroupNames;
    INFO("groups registered");
};

if (hasInterface) then {
    [{!isNull player && {!isNull leader (group player)}}, {
        [group player] call GRAD_groupsettings_fnc_setGroupChannels;
    }, []] call CBA_fnc_waitUntilAndExecute;
};
