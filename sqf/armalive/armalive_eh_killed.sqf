
_victim = _this select 0;
_killer = _this select 1;
_score = _this select 2;

format ["inf_killed_inf1;%1;%2;%3;%4;%5;%6;%7", 
	getplayeruid _killer,
	getplayeruid _victim,
	time,
	currentweapon _killer, // TODO: bstats parity
	1,	// score, TODO: bstats parity
	str getposATL _killer,
	str getposATL _victim]
  call armalive_send;

//_kUID, _vUID, time, _weapon, _score, str _kPos, str _vPos];
