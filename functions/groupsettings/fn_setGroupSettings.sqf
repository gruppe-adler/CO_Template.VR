/*  Sets group names and radio channels
*
*/

_groupNames = [] call GRAD_groupsettings_fnc_extractGroupNames;
_allgroups = [] call GRAD_groupsettings_fnc_findPlayableGroups;
[_allgroups] call GRAD_groupsettings_fnc_setGroupIndices;

if (isServer) then {
    [_allGroups, _groupNames] call GRAD_groupsettings_fnc_setDynamicGroupNames;
    "groupsettings: groups registered" remoteExec ["systemChat",0,false];
};

if (hasInterface) then {
    [{!isNull player}, {
        if (didJIP) then {[player] call GRAD_groupsettings_fnc_setJIPGroupIndex};
    }, []] call CBA_fnc_waitUntilAndExecute;

    [group player] call GRAD_groupsettings_fnc_setGroupChannels;
};
