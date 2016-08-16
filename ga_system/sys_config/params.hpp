

class Params
{
	class factionselector
	{
		//paramsArray[0]
		title = "Select a Faction";
		values[] = {0,1,2,3,4,5,6,7,8,9,10,11};
		texts[] = {"CSAT","Eastern European Armed Force","Russland (VDV)","Russland (VV)","FIA","Insurgents (Eastern Europe)","Middle-East Armed Force",
	             "Insurgents (Middle-East)","Terrorists (Middle-East)","African State Defense Force","Insurgents (Africa)","Pirates (Africa)"};
		default = 0;
		isGlobal = 1;
	};

	class timeofday
    {
		//paramsArray[1]
		title = "Time of Day:";
		values[] = {12,1};
		texts[] = {"Night - Stealth", "Day - Power"};
		default = 12;
    };

	class difficulty
	{
		//paramsArray[2]
		title = "Difficulty:";
		values[] = {0,2,3,4};
		texts[] = {"Easy","Normal","Hard","Ultra Hard"};
		default = 2;
        isGlobal = 1;
	};

	class weatherset
	{
	     //paramsArray[3]
         title = "Weather Settings:";
         values[] = {0,1,2,3};
         texts[] = {"Sunny","Cloudy","Rainy","Random"};

	};
	class c4only
	{
	    //paramsArray[4]
	    title = "C4 only:";
		values[] = {0,1};
		texts[] = {"NO","YES"};
	    default = 1;
		isGlobal = 1;
	};

	class soundplay
	{
	    //paramsArray[5]
        title = "Mission Sounds:";
	    values[] = {0,1};
	    texts[] = {"OFF","ON"};
	    default = 1;
        isGlobal = 1;
	};

	class nighteffect
	{
	    //paramsArray[6]
	    title = "Night Effects:";
	    values[] = {0,1};
		texts[] = {"OFF","ON"};
		default = 1;
		isGlobal = 1;
	};

	class autoresppos
	{
	   //paramsArray[7]
	   title = "Automatic Respawn Position:";
	   values[] = {0,1};
	   texts[] = {"NO","YES"};
	   default = 1;
	   isGlobal = 1;
	};

	class autodelete
	{
	   //paramsArray[8]
	   title = "Automatic Delete Function:";
	   values[] = {0,3};
	   texts[] = {"NO","YES"};
	   default = 3;
	   isGlobal = 1;
	};

	class autodeletecorpsecount
	{
	   //paramsArray[9]
	   title = "Max Corpse Count:";
	   values[] = {5,10,15,20};
	   texts[] = {"5","10","15","20"};
	   default = 15;
	   isGlobal = 1;
	};

	class autodeletecorpsetimer
	{
	  //paramsArray[10]
	   title = "Max Corpse Removal Time:";
	   values[] = {120,300,600,900,1200};
	   texts[] = {"2 min","5 min","10 min","15 min","20 min"};
	   default = 600;
	   isGlobal = 1;
	};

};
