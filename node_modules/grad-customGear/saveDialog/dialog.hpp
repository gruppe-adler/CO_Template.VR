#include "ui_toolkit.hpp"
#include "defines.hpp"
#include "base.hpp"

class customGear_saveDialog {

  idd = sd_mainIDD;
  movingEnable = false;
  enableSimulation = true;
  enableDisplay = true;
  onLoad = "uiNamespace setVariable [""customGear_saveDialog_display"", _this select 0]";

  class ControlsBackground {
    class TitleBar: sd_RscText {
      idc = -1;
      moving = true;
      colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0])",1};

      x = sd_mainX;
      y = sd_titleY;
      w = sd_mainW;
      h = sd_titleH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "GRUPPE ADLER - PERSÖNLICHE AUSRÜSTUNG";
    };

    class MainBG: sd_Background {
      idc = -1;
			colorBackground[] = {0, 0, 0, 0.6};

      x = sd_mainX;
      y = sd_mainY;
      w = sd_mainW;
      h = sd_mainH;
    };

    class Category0: sd_RscText {
    	idc = -1;

      x = sd_mainX + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 0);
      w = sd_categoryW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
    	text = "Helm";
    };

    class Category1: sd_RscText {
      idc = -1;

      x = sd_mainX + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 1);
      w = sd_categoryW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "Gesichtsbekleidung";
    };

    class Category2: sd_RscText {
      idc = -1;

      x = sd_mainX + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 2);
      w = sd_categoryW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "Visier 1x (NATO)";
    };

    class Category3: sd_RscText {
      idc = -1;

      x = sd_mainX + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 3);
      w = sd_categoryW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "Visier bis 4x (NATO)";
    };

    class Category4: sd_RscText {
      idc = -1;

      x = sd_mainX + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 4);
      w = sd_categoryW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "Visier ab 4x (NATO)";
    };

    class Category5: sd_RscText {
      idc = -1;

      x = sd_mainX + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 5);
      w = sd_categoryW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "Visier 1x (RUS)";
    };

    class Category6: sd_RscText {
      idc = -1;

      x = sd_mainX + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 6);
      w = sd_categoryW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "Visier ab 1x (RUS)";
    };

    class Current0: sd_RscTextR {
      idc = sd_current0;

      x = sd_mainX + sd_paddingX + sd_categoryW + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 0);
      w = sd_currentW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "nicht festgelegt";
    };

    class Current1: sd_RscTextR {
      idc = sd_current1;

      x = sd_mainX + sd_paddingX + sd_categoryW + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 1);
      w = sd_currentW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "nicht festgelegt";
    };

    class Current2: sd_RscTextR {
      idc = sd_current2;

      x = sd_mainX + sd_paddingX + sd_categoryW + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 2);
      w = sd_currentW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "nicht festgelegt";
    };

    class Current3: sd_RscTextR {
      idc = sd_current3;

      x = sd_mainX + sd_paddingX + sd_categoryW + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 3);
      w = sd_currentW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "nicht festgelegt";
    };

    class Current4: sd_RscTextR {
      idc = sd_current4;

      x = sd_mainX + sd_paddingX + sd_categoryW + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 4);
      w = sd_currentW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "nicht festgelegt";
    };

    class Current5: sd_RscTextR {
      idc = sd_current5;

      x = sd_mainX + sd_paddingX + sd_categoryW + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 5);
      w = sd_currentW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "nicht festgelegt";
    };

    class Current6: sd_RscTextR {
      idc = sd_current6;

      x = sd_mainX + sd_paddingX + sd_categoryW + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 6);
      w = sd_currentW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "nicht festgelegt";
    };
  };

  class Controls {
    class HelpButton: sd_RscCloseButton {
      idc = -1;
      text = "?";
      action = "createDialog 'customGear_helpDialog'";
      x = sd_helpButtonX;
      y = sd_closeButtonY;
      w = sd_closeButtonW;
      h = sd_closeButtonH;
    };

    class CloseButton: sd_RscCloseButton {
      idc = -1;
      x = sd_closeButtonX;
      y = sd_closeButtonY;
      w = sd_closeButtonW;
      h = sd_closeButtonH;
    };

    class Save0: sd_SaveButton {
      idc = sd_save0;

      x = sd_mainX + sd_paddingX + sd_categoryW + sd_paddingX + sd_currentW + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 0);
      w = sd_saveButtonW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "speichern";
      action = "['HELMET', getplayerUID player, headgear player] remoteExec ['grad_customGear_fnc_saveGear', 2, false]";
    };

    class Save1: sd_SaveButton {
      idc = sd_save1;

      x = sd_mainX + sd_paddingX + sd_categoryW + sd_paddingX + sd_currentW + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 1);
      w = sd_saveButtonW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "speichern";
      action = "['GOGGLES', getplayerUID player, goggles player] remoteExec ['grad_customGear_fnc_saveGear', 2, false]";
    };

    class Save2: sd_SaveButton {
      idc = sd_save2;

      x = sd_mainX + sd_paddingX + sd_categoryW + sd_paddingX + sd_currentW + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 2);
      w = sd_saveButtonW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "speichern";
      action = "['USSCOPE1', getplayerUID player, (player weaponAccessories (primaryWeapon player)) select 2] remoteExec ['grad_customGear_fnc_saveGear', 2, false]";
    };

    class Save3: sd_SaveButton {
      idc = sd_save3;

      x = sd_mainX + sd_paddingX + sd_categoryW + sd_paddingX + sd_currentW + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 3);
      w = sd_saveButtonW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "speichern";
      action = "['USSCOPE4', getplayerUID player, (player weaponAccessories (primaryWeapon player)) select 2] remoteExec ['grad_customGear_fnc_saveGear', 2, false]";
    };

    class Save4: sd_SaveButton {
      idc = sd_save4;

      x = sd_mainX + sd_paddingX + sd_categoryW + sd_paddingX + sd_currentW + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 4);
      w = sd_saveButtonW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "speichern";
      action = "['USSCOPEM', getplayerUID player, (player weaponAccessories (primaryWeapon player)) select 2] remoteExec ['grad_customGear_fnc_saveGear', 2, false]";
    };

    class Save5: sd_SaveButton {
      idc = sd_save5;

      x = sd_mainX + sd_paddingX + sd_categoryW + sd_paddingX + sd_currentW + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 5);
      w = sd_saveButtonW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "speichern";
      action = "['RUSSCOPE1', getplayerUID player, (player weaponAccessories (primaryWeapon player)) select 2] remoteExec ['grad_customGear_fnc_saveGear', 2, false]";
    };

    class Save6: sd_SaveButton {
      idc = sd_save6;

      x = sd_mainX + sd_paddingX + sd_categoryW + sd_paddingX + sd_currentW + sd_paddingX;
      y = sd_mainY + sd_paddingY + ((sd_paddingY + sd_rowH) * 6);
      w = sd_saveButtonW;
      h = sd_rowH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "speichern";
      action = "['RUSSCOPE4', getplayerUID player, (player weaponAccessories (primaryWeapon player)) select 2] remoteExec ['grad_customGear_fnc_saveGear', 2, false]";
    };
  };
};

class customGear_helpDialog {
  idd = -1;
  movingEnable = false;
  enableSimulation = true;
  enableDisplay = true;

  class ControlsBackground {
    class TitleBar: sd_RscText {
      idc = -1;
      moving = true;
      colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0])",1};

      x = sd_mainX;
      y = sd_titleY;
      w = sd_mainW;
      h = sd_titleH;

      sizeEx = 0.04 * TEXT_SCALE;
      text = "GRUPPE ADLER - PERSÖNLICHE AUSRÜSTUNG - HILFE";
    };

    class MainBG: sd_Background {
      idc = -1;
      colorBackground[] = {0, 0, 0, 0.6};

      x = sd_mainX;
      y = sd_mainY;
      w = sd_mainW;
      h = sd_mainH;
    };

    class HelpText: sd_RscStructText {
      idc = -1;

      x = sd_mainX + sd_paddingX;
      y = sd_mainY + sd_paddingY;
      w = sd_mainW - sd_paddingX - sd_paddingX;
      h = sd_mainH - sd_paddingY - sd_paddingY;

      text = "Das hier gespeicherte Equipment kann in einigen unserer COOP Missionen bei Spielstart geladen werden.<br /><br />Über die 'speichern' / 'überschreiben' Buttons werden die derzeit ausgerüsteten Gegenstände abgespeichert. Ist ein Button ausgegraut, bedeutet das, dass du keinen Gegenstand dieser Kategorie ausgerüstet hast.<br/><br/>Welches der gespeicherten Visiere geladen wird ist vom vorgegebenen Loadout der Mission abhängig. Ist ein stark vergrößerndes Visier vorgegeben, so wird auch das 'ab 4x' Visier geladen.";
    };
  };

  class Controls {
    class CloseButton: sd_RscCloseButton {
      idc = -1;
      x = sd_closeButtonX;
      y = sd_closeButtonY;
      w = sd_closeButtonW;
      h = sd_closeButtonH;
    };
  };
};
