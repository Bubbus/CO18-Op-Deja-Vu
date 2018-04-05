// Bub's swappy team scripto.
// Based on CA's wave respawn system.

params ["_unit", "_corpse"];

if (isDedicated) exitWith {};

_setupUnit = 
{
	params ["_unit", "_faction"];
	
	_loadout = (_unit getVariable "f_var_assignGear");
	_unit setVariable ["f_var_assignGear_done",false,true];
	[_loadout, _unit, _faction] call f_fnc_assignGear;
	[] execVM "f\radios\radio_init.sqf";
};

_addGroupMenu = 
{
	params ["_unit"];
	
	sleep 5;
		
	if (isNil "F3_JIP_reinforcementOptionsAction") then 
	{
		[_unit] execVM "f\JIP\f_JIP_addReinforcementOptionsAction.sqf";
	};
};


// MAKE SURE THE PLAYER INITIALIZES PROPERLY
waitUntil {sleep 0.1; (!isNull _unit) and {!isnil "ca_initserver"}};


// If no corpse exists, this is a JIP player.
if (isNull _corpse) then
{
	[_unit, faction _unit] call _setupUnit;

	if (!f_var_JIP_JIPMenu or time < 10) exitWith {};
	
	if (f_var_JIP_RespawnMenu) exitWith 
	{		
		[_unit] spawn _addGroupMenu;
	};
	
}
else
{
	// u died and turned evil bro
	_unit setPos (getmarkerpos "respawn_east");
	
	_baddieGroup = createGroup east;
	[_unit] joinSilent _baddieGroup;
	
	[_unit, "opf_f"] call _setupUnit;
	
	if (typeof _unit != "seagull" and {f_var_JIP_RemoveCorpse}) then 
	{
		_corpse spawn 
		{
			hideBody _this;
			sleep 60;
			deleteVehicle _this;
		};
		
	};
	
	[_unit] spawn _addGroupMenu;
	
};