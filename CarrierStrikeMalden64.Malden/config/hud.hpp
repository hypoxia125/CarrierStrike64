import RscPicture;
import RscText;

class CS_Game_HUD
{
	idd = -1;
	duration = 1e+011;
	fadeIn = 1;
	fadeOut = 1;
	onLoad = "uinamespace setVariable ['game_hud', _this select 0]";
	onUnload = "uinamespace setVariable ['game_hud', nil]";
	class controls
	{
		class silo_1: RscPicture
		{
			idc = 1200;
			text = "img\silonumbers\grey\silonumbers_1.paa";
			x = 0.366125 * safezoneW + safezoneX;
			y = 0.024 * safezoneH + safezoneY;
			w = 0.04725 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class silo_2: RscPicture
		{
			idc = 1201;
			text = "img\silonumbers\grey\silonumbers_2.paa";
			x = 0.42125 * safezoneW + safezoneX;
			y = 0.024 * safezoneH + safezoneY;
			w = 0.04725 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class silo_3: RscPicture
		{
			idc = 1202;
			text = "img\silonumbers\grey\silonumbers_3.paa";
			x = 0.476375 * safezoneW + safezoneX;
			y = 0.024 * safezoneH + safezoneY;
			w = 0.04725 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class silo_4: RscPicture
		{
			idc = 1203;
			text = "img\silonumbers\grey\silonumbers_4.paa";
			x = 0.5315 * safezoneW + safezoneX;
			y = 0.024 * safezoneH + safezoneY;
			w = 0.04725 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class silo_5: RscPicture
		{
			idc = 1204;
			text = "img\silonumbers\grey\silonumbers_5.paa";
			x = 0.586625 * safezoneW + safezoneX;
			y = 0.024 * safezoneH + safezoneY;
			w = 0.04725 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class carrier_blue: RscPicture
		{
			idc = 1205;
			text = "img\carriers\carrierblue.paa";
			x = 0.240125 * safezoneW + safezoneX;
			y = -0.046 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.21 * safezoneH;
		};
		class carrier_red: RscPicture
		{
			idc = 1206;
			text = "img\carriers\carrierred.paa";
			x = 0.64175 * safezoneW + safezoneX;
			y = -0.046 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.21 * safezoneH;
		};
		class carrier_blue_stats: RscText
		{
			idc = 1000;
			text = "Hull -  100     Shields - 100"; //--- ToDo: Localize;
			x = 0.240125 * safezoneW + safezoneX;
			y = 0.094 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.042 * safezoneH;
		};
		class carrier_red_stats: RscText
		{
			idc = 1001;
			text = "Hull - 100      Shields - 100"; //--- ToDo: Localize;
			x = 0.64175 * safezoneW + safezoneX;
			y = 0.094 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.042 * safezoneH;
		};
	};
};