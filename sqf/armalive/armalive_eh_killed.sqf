



//USAGE:
//[_victim,_killer,_scoreToAdd_p2p] execVM "armalive\armalive_eh_killed.sqf";


_victim = _this select 0;
_killer = _this select 1;

//JTAC
_scoreToAdd_p2p = _this select 2;	//when a player shoot another player


format ["inf_killed_inf1;%1;%2;%3;%4;%5;%6;%7", 
	getplayeruid _killer,
	getplayeruid _victim,
	time,
	currentweapon _killer, // TODO: bstats parity
	_scoreToAdd_p2p,	// score, TODO: bstats parity
	str getposATL _killer,
	str getposATL _victim]
  call armalive_send;

//_kUID, _vUID, time, _weapon, _score, str _kPos, str _vPos];
