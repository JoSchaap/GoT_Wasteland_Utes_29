//	@file Version: 1.0
//	@file Name: midGroup.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 08/12/2012 21:58
//	@file Args:

if(!X_Server) exitWith {};

private ["_group","_vehicle1"];

_group = _this select 0;
_vehicle1 = _this select 1;




//Anti Vehicle
_leader = _group createunit ["Priest", getmarkerpos "spawn2", [], 0.5, "Form"];
_leader addMagazine "PG7V";
_leader addMagazine "PG7V";
_leader addWeapon "RPG7V";
_leader addMagazine "30Rnd_545x39_AK";
_leader addMagazine "30Rnd_545x39_AK";
_leader addMagazine "30Rnd_545x39_AK";
_leader addWeapon "AKS_74_U";
_leader moveincargo _vehicle1;

//Support
_man2 = _group createunit ["CIV_EuroMan02_EP1", getmarkerpos "spawn2", [], 0.5, "Form"];
_man2 addMagazine "75Rnd_545x39_RPK";
_man2 addMagazine "75Rnd_545x39_RPK";
_man2 addWeapon "RPK_74";
_man2 moveincargo _vehicle1;

//Rifle_man
_man3 = _group createunit ["CIV_EuroMan01_EP1", getmarkerpos "spawn2", [], 0.5, "Form"];
_man3 addMagazine "30Rnd_762x39_AK47";
_man3 addMagazine "30Rnd_762x39_AK47";
_man3 addMagazine "30Rnd_762x39_AK47";
_man3 addWeapon "AK_47_M";
_man3 moveincargo _vehicle1;

//Rifle_man
_man4 = _group createunit ["RU_Citizen1", getmarkerpos "spawn2", [], 0.5, "Form"];
_man4 addMagazine "30Rnd_762x39_AK47";
_man4 addMagazine "30Rnd_762x39_AK47";
_man4 addMagazine "30Rnd_762x39_AK47";
_man4 addWeapon "AK_47_M";
_man4 moveincargo _vehicle1;
//Rifle_man
_man5 = _group createunit ["Rocker1", getmarkerpos "spawn2", [], 0.5, "Form"];
_man5 addMagazine "30Rnd_762x39_AK47";
_man5 addMagazine "30Rnd_762x39_AK47";
_man5 addMagazine "30Rnd_762x39_AK47";
_man5 addWeapon "AK_47_M";
_man5 moveincargo _vehicle1;
//Sniper
_man6 = _group createunit ["Rocker2", getmarkerpos "spawn2", [], 0.5, "Form"];
_man6 addMagazine "10Rnd_762x54_SVD";
_man6 addMagazine "10Rnd_762x54_SVD";
_man6 addMagazine "10Rnd_762x54_SVD";
_man6 addWeapon "SVD";
_man6 moveincargo _vehicle1;
//Grenadier
_man7 = _group createunit ["Woodlander3", getmarkerpos "spawn2", [], 0.5, "Form"];
_man7 addMagazine "30Rnd_545x39_AK";
_man7 addMagazine "30Rnd_545x39_AK";
_man7 addMagazine "30Rnd_545x39_AK";
_man7 addMagazine "1Rnd_HE_GP25";
_man7 addMagazine "1Rnd_HE_GP25";
_man7 addMagazine "1Rnd_HE_GP25";
_man7 addWeapon "AK_74_GL";
_man7 moveincargo _vehicle1;
//Grenadier
_man8 = _group createunit ["Woodlander4", getmarkerpos "spawn2", [], 0.5, "Form"];
_man8 addMagazine "30Rnd_545x39_AK";
_man8 addMagazine "30Rnd_545x39_AK";
_man8 addMagazine "30Rnd_545x39_AK";
_man8 addMagazine "1Rnd_HE_GP25";
_man8 addMagazine "1Rnd_HE_GP25";
_man8 addMagazine "1Rnd_HE_GP25";
_man8 addWeapon "AK_74_GL";
_man8 moveincargo _vehicle1;
//Sniper
_man9 = _group createunit ["Woodlander4", getmarkerpos "spawn2", [], 0.5, "Form"];
_man9 addMagazine "10Rnd_762x54_SVD";
_man9 addMagazine "10Rnd_762x54_SVD";
_man9 addMagazine "10Rnd_762x54_SVD";
_man9 addWeapon "SVD";
_man9 moveincargo _vehicle1;
//Rifle_man
_man10 = _group createunit ["Woodlander4", getmarkerpos "spawn2", [], 0.5, "Form"];
_man10 addMagazine "30Rnd_762x39_AK47";
_man10 addMagazine "30Rnd_762x39_AK47";
_man10 addMagazine "30Rnd_762x39_AK47";
_man10 addWeapon "AK_47_M";
_man10 moveincargo _vehicle1;
_leader = leader _group;