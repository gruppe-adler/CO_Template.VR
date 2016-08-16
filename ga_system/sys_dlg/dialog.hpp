#include "define.hpp"

class GRAD_CHOICE_MENUE
{
	idd = -1;
	movingEnable = 0;
	enableSimulation = true;
	onLoad = "uiNamespace setVariable ['grad_dlg',[(_this select 0),true]]";
	onUnload = "uiNamespace setVariable ['grad_dlg',[0,false]]";

	class controls
	{
		class GRAD_FRAME_BACK1: GRAD_Backround
		{
		 idc = 52680;
		 colorBackground[] = {1,1,1,0.4};
		 x = 0.355776 * safezoneW + safezoneX;
		 y = 0.291 * safezoneH + safezoneY;
		 w = 0.288448 * safezoneW;
		 h = 0.297 * safezoneH;
		};
		class GRAD_BEGIN_TXT: GRAD_RscText1
		{
			idc = 52681;
			type = 0;
			style = 530;
			x = 0.386681 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.226637 * safezoneW;
			h = 0.022 * safezoneH;
			text = $STR_DLG_CHOOSEMENUE_WHATUWANT;
		};
		class GRAD_DIVER_BTN: GRAD_RscPicButton
		{
			idc = 52682;
			x = 0.37638 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.0515085 * safezoneW;
			h = 0.088 * safezoneH;
			text = "\A3\characters_F\data\ui\icon_G_Diving_CA.paa";
			action = "[0] spawn GRAD_dial_fnc_ChooseMenu;";
		};
		class GRAD_PARA_BTN: GRAD_RscPicButton
		{
			idc = 52683;
			x = 0.474246 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.0515085 * safezoneW;
			h = 0.088 * safezoneH;
			text = "\A3\Characters_F\data\ui\icon_b_parachute_ca.paa";
			action = "[1] spawn GRAD_dial_fnc_ChooseMenu;";
		};
		class GRAD_NOCHO_BTN: GRAD_RscPicButton
		{
			idc = 52684;
			colorText[] = { 1, 0, 0, 1 };
			x = 0.572112 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.0515085 * safezoneW;
			h = 0.088 * safezoneH;
			text = "\A3\ui_f\data\map\groupicons\waypoint.paa";
			action = "[2] spawn GRAD_dial_fnc_ChooseMenu;";
		};
		class GRAD_INFO_TXT: GRAD_RscText1
		{
			idc = 52685;
			type = 0;
			style = 530;
			colorBackground[] = {0,0,0,0};
			colorText[] = {0, 0, 0, 1};
			x = 0.391832 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.216336 * safezoneW;
			h = 0.022 * safezoneH;
			text = "";
		};
		class GRAD_CONFIRM_BTN: GRAD_RscPicButton
		{
			idc = 52686;
			style = 530;
			colorBackground[] = {0,0,0,0.4};
			colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",0.3 };
			x = 0.520603 * safezoneW + safezoneX;
			y = 0.533 * safezoneH + safezoneY;
			w = 0.113319 * safezoneW;
			h = 0.033 * safezoneH;
			text = $STR_DLG_CHOOSEMENUE_CONFIRM;
      action = "[3] spawn GRAD_dial_fnc_ChooseMenu;";
		};
		class GRAD_CLOSE_BTN: GRAD_RscPicButton
		{
			idc = 52687;
			style = 530;
			colorBackground[] = {0,0,0,0.4};
			colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",0.3 };
			x = 0.366078 * safezoneW + safezoneX;
			y = 0.533 * safezoneH + safezoneY;
			w = 0.113319 * safezoneW;
			h = 0.033 * safezoneH;
			text = $STR_DLG_CHOOSEMENUE_CLOSE;
			action = "closeDialog 0";
		};

	};
};


/*

picture = "\A3\characters_F\data\ui\icon_G_Diving_CA.paa";
picture = "\A3\characters_f\Data\UI\icon_V_RebreatherB_CA.paa";
picture = "\A3\Characters_F\data\ui\icon_b_parachute_ca.paa";
icon = "\A3\ui_f\data\map\groupicons\waypoint.paa";


*/
