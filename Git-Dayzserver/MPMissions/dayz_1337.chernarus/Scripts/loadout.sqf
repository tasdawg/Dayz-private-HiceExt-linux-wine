private ["_player","_UID"];
_player = player;
_UID = getPlayerUID _player;

if(isNil "AdminList") then {
	AdminList = ["76561198141219509","222222222222"]; // Admins (ONLY if you don't have my admin tool installed)
	ModList = ["11111111111","222222222222"];}; // Mods (ONLY if you don't have my admin tool installed)
	DonorList = ["11111111111","222222222222"]; // Donors
	ProDonorList = ["11111111111","222222222222"]; // ProDonors
	
//Admin Loadout
if (_UID in AdminList) then {
	DefaultMagazines = ["ItemBandage","ItemBandage","ItemBandage","ItemBandage","17Rnd_9x19_glock17","17Rnd_9x19_glock17","30Rnd_762x39_SA58","30Rnd_762x39_SA58","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemSodaRabbit","FoodSteakCooked"];
	DefaultWeapons = ["glock17_EP1","Sa58V_RCO_EP1","NVGoggles","ItemGPS","ItemKnife","ItemToolbox","ItemCrowbar","ItemHatchet_DZE"];
	DefaultBackpack = "DZ_LargeGunBag_EP1";
	DefaultBackpackWeapon = "";
}else{
	//Moderator Loadout
	if(_UID in ModList) then {
		DefaultMagazines = ["ItemBandage","ItemBandage","ItemBandage","ItemBandage","17Rnd_9x19_glock17","17Rnd_9x19_glock17","30Rnd_556x45_G36","30Rnd_556x45_G36","ItemMorphine","ItemPainkiller","ItemBloodbag","FoodSteakCooked","8Rnd_B_Saiga12_Pellets","8Rnd_B_Saiga12_Pellets","8Rnd_B_Saiga12_74Slug","ItemSodaRabbit"];
		DefaultWeapons = ["glock17_EP1","G36K_camo","NVGoggles","ItemMap","ItemToolbox"];
		DefaultBackpack = "DZ_Backpack_EP1";
		DefaultBackpackWeapon = "";
	}else{
		//Pro-Donor Loadout
		if(_UID in ProDonorList) then {
			DefaultMagazines = ["ItemBandage","ItemBandage","ItemBandage","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","30Rnd_556x45_G36","30Rnd_556x45_G36","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemSodaRabbit","ItemSodaRabbit","FoodSteakCooked"];
			DefaultWeapons = ["M9SD","G36K_camo","ItemGPS","ItemKnife","ItemToolbox"];
			DefaultBackpack = "DZ_Backpack_EP1";
			DefaultBackpackWeapon = "";
		}else{
			//Donor Loadout
			if(_UID in DonorList) then {
				DefaultMagazines = ["ItemBandage","ItemBandage","ItemBandage","ItemBandage","ItemMorphine","ItemPainkiller","ItemSodaRabbit","17Rnd_9x19_glock17","17Rnd_9x19_glock17"];
				DefaultWeapons = ["glock17_EP1","ItemMap","ItemHatchet_DZE","ItemToolbox"];
				DefaultBackpack = "DZ_ALICE_Pack_EP1";
				DefaultBackpackWeapon = "";
			}else{
				//Default Loadout for normal players
				DefaultMagazines = ["ItemBandage","ItemBandage","ItemMorphine","ItemPainkiller","ItemSodaRabbit"];
				DefaultWeapons = ["ItemMap","ItemHatchet_DZE"];
				DefaultBackpack = "DZ_Patrol_Pack_EP1";
				DefaultBackpackWeapon = "";
			};
		};
	};
};
