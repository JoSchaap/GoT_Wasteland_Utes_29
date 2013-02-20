// Cargo drop script.
// Created by MarKeR - Helo and assistance from F2k Sel. Much obliged.
// For Use - Anyone, just leave these lines in here please. Thanks

// Cargo drop script used by 404Games with permission from [OCUK] MarKeR.
// Modifications made by [404] Costlyy
#include "setup.sqf"
#include "mainMissionDefines.sqf";

if(!isServer) exitwith {};

private ["_truck2"];


//Start Mission
_vehicleClass = "C130J_US_EP1";

//Vehicle Class, Posistion, Fuel, Ammo, Damage, State
_vehicle = [_vehicleClass,getMarkerPos "plane2",.1,1,0,"FLY"] call createMissionVehicle;
_vehicle flyInHeight 300;
_vehicle setspeedmode "normal";
_vehicle forceSpeed 220;

sleep 0.5;
_grp = creategroup civilian;

_pilot = _grp createunit ["Pilot_EP1",getmarkerpos "spawn2",[],0,"FORM"];
_pilot moveindriver _vehicle;
_pilot assignAsDriver _vehicle;
_pilot addMagazine "6Rnd_45ACP";
_pilot addMagazine "6Rnd_45ACP";
_pilot addMagazine "6Rnd_45ACP";
_pilot addWeapon "revolver_gold_EP1";
_pilot setBehaviour "CARELESS";
_pilot setskill ["Spotdistance",0];
_pilot setcombatmode "blue";
_pilot disableAI "FSM";
_pilot disableAI "Autotarget";
_pilot disableAI "target";
group _pilot Move _randomPos;

[CivGrpM,_vehicle] spawn createMidGroup2;


                                    
_picture = getText (configFile >> "cfgVehicles" >> typeOf _vehicle >> "picture");
_vehicleName = getText (configFile >> "cfgVehicles" >> typeOf _vehicle >> "displayName");
_hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'> US Ranger's Vehicle drop</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>A<t color='%4'> %3</t>, has been designated to airdrop a vehicle.</t>", _missionType, _picture, _vehicleName, mainMissionColor, subTextColor];
[nil,nil,rHINT,_hint] call RE;

_truck2 = [_vehicle,_randomPos,_picture,_vehicleName,_missionType,_pilot] call createSupplyDrop2;

//End Mission
deletevehicle _vehicle;
deletevehicle _pilot;

_truck2

