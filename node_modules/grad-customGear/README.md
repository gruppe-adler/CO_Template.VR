# grad-customGear
Save personalized gear.

## Installation
Put the whole thing into a folder called `node_modules` in your mission root.
Add this to your `description.ext`:
```
#include "node_modules\grad-customGear\saveDialog\dialog.hpp"

class CfgFunctions {
  #include "node_modules\grad-customGear\cfgFunctions.hpp"
};
```

## Saving
Add this to any objects init field:
```
[this] call grad_customGear_fnc_addAction;
```
This will allow players to open the saving dialog.

## Loading
Add this to your `description.ext`:
```
class grad_customGear {
  allowHelmet = 1;
  allowGoggles = 1;
  allowSimpleScopes = 1;
  allowMagnifyingScopes = 1;
  allowMarksmanScopes = 1;
};
```
Adjust values to define what players may load after mission start.

Load gear with mouse wheel interaction shortly after mission start.
