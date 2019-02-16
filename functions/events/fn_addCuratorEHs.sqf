#include "component.hpp"

params [["_curatorLogic",objNull]];

// EH is aLocal
_curatorLogic addEventHandler ["CuratorObjectPlaced", {_this call FUNC(onCuratorObjectPlaced)}];
