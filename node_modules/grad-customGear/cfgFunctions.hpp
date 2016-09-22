#ifndef MODULES_DIRECTORY
    #define MODULES_DIRECTORY node_modules
#endif

#define PROJECT_NAME grad-customGear

class grad_customgear {
  class dialog {
    file = MODULES_DIRECTORY\PROJECT_NAME\functions\dialog;
    class addAction {};
    class getDisplayName {};
    class openDialog {};
    class updateDialog {};
  };

  class init {
    file = MODULES_DIRECTORY\PROJECT_NAME\functions\init;
    class broadcastVar {postInit = 1;};
    class loadActions {postInit = 1;};
  };

  class load {
    file = MODULES_DIRECTORY\PROJECT_NAME\functions\load;
    class findUID {};
    class loadGear {};
  };

  class optics {
    file = MODULES_DIRECTORY\PROJECT_NAME\functions\optics;
    class getZoomFactor {};
    class isNightVision {};
    class isRussian {};
    class isThermal {};
  };

  class save {
    file = MODULES_DIRECTORY\PROJECT_NAME\functions\save;
    class saveGear {};
  };

};
