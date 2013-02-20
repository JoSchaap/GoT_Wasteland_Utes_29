//	@file Version: 1.0
//	@file Name: createMissionVehicle.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 26/1/2013 15:19

if(!isServer) exitwith {};

private["_vehicleClass","_fuel","_ammo","_damage","_state","_veh"];




_veh = createVehicle [_cargoItem_1,_randomPos,[], 0, "NONE"];
_veh setFuel 0;
_veh setVehicleAmmo 1;
_veh setdamage .75;

_veh setVehicleLock "LOCKED";
_veh setVariable["original",1,true];
_veh setVariable ["R3F_LOG_disabled", true, true];

clearMagazineCargoGlobal _veh;
clearWeaponCargoGlobal _veh;

_veh