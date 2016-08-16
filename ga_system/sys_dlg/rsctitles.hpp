class RscTitles
{

      class ShowPhone
      {
        idd = -1;
        fadein = 0;
		    fadeout = 0;
        duration = "missionNamespace getVariable ['grad_phone_duration',2]";
        onLoad = "_this spawn GRAD_dial_fnc_PhoneAction";
        class controls
        {
          class PhoneControl
          {
           idc = 48445;
           type = 0;
           style = 48; //centre text
           x = "missionNamespace getVariable 'grad_phone_dsp' select 0";
           y = 0.313 * safezoneH + safezoneY;
           h = 0.528 * safezoneH;
           w = 0.285625 * safezoneW;
           font = "RobotoCondensed";
           sizeEx = 0.03;
           colorBackground[] = {0,0,0,1};
           colorText[] = {1,1,1,1};
           text = "ga_system\sys_pics\Handy.paa";
         };
         class TextControl
         {
           idc = 48446;
           type = 0;
           style = 530;
           x = "missionNamespace getVariable 'grad_phone_dsp' select 1";
           y = 0.401 * safezoneH + safezoneY;
           h = 0.400 * safezoneH;
           w = 0.13550 * safezoneW;
           font = "RobotoCondensed";
           sizeEx = 0.04;
           colorBackground[] = {1,1,1,1};
           colorText[] = {0,0,0,1};
           text = "";
           lineSpacing = 1;
         };
        };
      };
      class PhoneInfo
      {
        idd = -1;
        fadein = 1;
        fadeout = 1;
        duration = 1;
        class controls
        {
          class CtrlInfo
          {
            idc = 48447;
            type = 0;
            style = 48;
            x = 0.943438 * safezoneW + safezoneX;
            y = 0.445 * safezoneH + safezoneY;
            w = 0.0515625 * safezoneW;
            h = 0.088 * safezoneH;
            font = "RobotoCondensed";
            sizeEx = 0.03;
            colorBackground[] = {0,0,0,1};
            colorText[] = {1,1,1,1};
            text = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\call_ca.paa";
          };
        };
      };
      class ProBar
      {
        idd = -1;
        fadein = 0;
        fadeout = 0;
        duration = "missionNamespace getVariable ['grad_pbar_duration',0.1]";
        onLoad = "_this spawn GRAD_dial_fnc_ProBarAction";
        class controls
        {
          class CtrlProbar
          {
            idc = 48448;
            type = 8;
            style = 0;
            x = 0.273362 * safezoneW + safezoneX;
            y = 0.093 * safezoneH + safezoneY;
            w = 0.453275 * safezoneW;
            h = 0.022 * safezoneH;
            colorFrame[] = {0.9,0.5,0.3,1};
            colorBar[] = {0,0,0,0};
            texture = "";
          };
          class ProBarTxt
          {
            idc = 48449;
            type = 0;
            style = 530;
            x = 0.293966 * safezoneW + safezoneX;
            y = 0.093 * safezoneH + safezoneY;
            w = 0.412068 * safezoneW;
            h = 0.022 * safezoneH;
            font = "RobotoCondensed";
            sizeEx = 0.04;
            colorBackground[] = {0,0,0,0};
            colorText[] = {1,1,1,1};
            text = "";
            lineSpacing = 0;
          };
       };
     };
};
