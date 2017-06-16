#include "component.hpp"

if (typeName _this == "ARRAY") then {
    _log = format _this;
} else {
    if (typeName _this == "STRING") then {
        _log = _this;
    } else {
        _log = str _this;
    };
};

_log remoteExec ["diag_log", 2, false];
