# GRAD Custom Gear
Save personalized gear.

## Dependencies
* [CBA_A3](https://github.com/CBATeam/CBA_A3)

## Installation
### Manually
1. Create a folder in your mission root folder and name it `modules`. Then create one inside there and call it `grad-customGear`.
2. Download the contents of this repository ( there's a download link at the side ) and put it into the directory you just created.
3. Append the following lines of code to the `description.ext`:

```sqf
#include "modules\grad-customGear\saveDialog\dialog.hpp"

class CfgFunctions {
  #include "modules\grad-customGear\cfgFunctions.hpp"
};

class CfgNotifications {
    #include "modules\grad-customGear\cfgNotifications.hpp"
};
```

### Via `npm`
_for details about what npm is and how to use it, look it up on [npmjs.com](https://www.npmjs.com/)_

1. Install package `grad-customgear` : `npm install --save grad-customgear`
2. Prepend your mission's `description.ext` with `#define MODULES_DIRECTORY node_modules`
3. Append the following lines of code to the `description.ext`:

```sqf
#include "node_modules\grad-customGear\saveDialog\dialog.hpp"

class CfgFunctions {
  #include "node_modules\grad-customGear\cfgFunctions.hpp"
};

class CfgNotifications {
    #include "node_modules\grad-customGear\cfgNotifications.hpp"
};
```

## Configuration
Add the class `CfgGradCustomGear` to your description.ext. Inside it you can use the following attributes:

Attribute             | Explanation
----------------------|---------------------------------------------------------------------
allowHelmet           | allow loading of helmets (0/1)
allowGoggles          | allow loading of goggles (0/1)
allowSimpleScopes     | allow loading of non-magnifying scopes (0/1)
allowMagnifyingScopes | allow loading of magnifying rifle scopes (i.e. ACOG, RCO, ...) (0/1)
allowMarksmanScopes   | allow loading of magnifying marksman scopes (0/1)
actionsOnMissionStart | automatically add the interactions on mission start (0/1)

### Example

```sqf
class CfgGradCustomGear {
    allowHelmet = 1;
    allowGoggles = 1;
    allowSimpleScopes = 1;
    allowMagnifyingScopes = 1;
    allowMarksmanScopes = 1;
    actionsOnMissionStart = 1;
};
```

## Saving
Add this to any objects init field:

```sqf
[this] call grad_customGear_fnc_addAction;
```

This will allow players to open the saving dialog.
