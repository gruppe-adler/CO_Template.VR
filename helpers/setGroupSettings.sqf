/*  Sets group names and radio channels
*
*/

_groupSettings = [] call GRAD_groupsettings_fnc_getUsersettings;

if (isServer) then {
    _allgroups = [] call GRAD_groupsettings_fnc_findPlayableGroups;
    [_allgroups] call GRAD_groupsettings_fnc_setGroupIndices;
    [_allGroups, _groupSettings] call GRAD_groupsettings_fnc_setDynamicGroupNames;
};

if (hasInterface) then {
    if (didJIP) then {[player] remoteExec ["GRAD_groupsettings_fnc_setJIPGroupIndex",2,false]};
    [_groupSettings] call GRAD_groupsettings_fnc_setGroupChannels;
};
