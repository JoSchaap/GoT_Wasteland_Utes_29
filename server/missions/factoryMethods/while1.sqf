// While script.
// Created by Worldtrade1101 - Helo and assistance 
// For Use - Anyone, just leave these lines in here please. Thanks



#include "mainMissionDefines.sqf";
#include "setup.sqf";

if(!isServer) exitwith {};

private ["_randomPos","_truckpos","_behaviour","_distance","_unitsAlive","_missionMarkerName_here","_truckcount","_truckpos","_missionType_here"];

_truck = _this select 0; //_truck is the vehicle we are looking
_randomPos = _this select 1; //destination final
_distance = _this select 2; //distance from the objectif

_missionType_here = _this select 3; // name of the vehicle / convoy
_missionMarkerName_here = _this select 4; // name of the marker vehicle / convoy
_behaviour = _this select 5;
_driver = _this select 6;

_truckcount = 0;

while {_truck distance _randomPos >= _distance} do {

[_missionMarkerName_here] call deleteClientMarker;

_truckpos = getpos _truck;
_truckdist= _truck distance _randomPos;
[_missionMarkerName_here,_truckpos,_missionType_here] call createClientMarker;
//check if the truck is immobile for more than 25sec
if (_truck distance _truckpos <= 1) then {
_truckcount =_truckcount + 1; 
};
//check if the truck is not getting closer to the obj.
if (_truckdist > _truckdist1) then {
_truckcount = 5; 
};
//restart the convoy movement!
if (_truckcount == 5) then {
CivGrpM setBehaviour _behaviour;
if (alive _driver) then {
_driver moveindriver _truck;
group _driver move _randomPos;
driver _truck move _randomPos;
group _driver1 move _randomPos;
_truckcount = 0;
};
_truckcount = 0;
};
//code to end the while
if (_distance != 2100) then {

_unitsAlive = ({alive _x} count units CivGrpM);
if(_unitsAlive < 1) then {
_randomPos = _truckpos;
};
};
if (damage _truck == 1) then {
_randomPos = _truckpos;
};

sleep 1;

_truckdist1 = _truck distance _randomPos;
};
[_missionMarkerName_here] call deleteClientMarker;
