// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: initPlayerLocal.sqf
//	@file Author: AgentRev

if (!isServer) then
{
	"BIS_fnc_MP_packet" addPublicVariableEventHandler compileFinal preprocessFileLineNumbers "server\antihack\filterExecAttempt.sqf";
};
null = [player] execVM "addons\GrassCutter\grasscutter.sqf";
player addEventhandler["respawn","_this execVM 'addons\GrassCutter\grasscutter.sqf'"];
//[] execVM "addons\killfeed\killfeed.sqf";
_s_d={

	a_a set[1,[true,_e addaction["Drag",{

		_e=_this select 0;

		_e removeaction(_this select 2);

		a_a set[1,[false,-1,_e,objnull]];

		if(a_a select 2 select 0)then{a_a select 0 removeaction(a_a select 2 select 1);a_a set[2,[false]]};

		_u=_this select 1;

		if alive _e then{

			_e attachto[_u,[0,1,0]];

			a_a set[1,[false,_u,_u addaction["Drop",{

				_this select 0 removeaction(_this select 2);

				a_a set[1,[true,-1]];

				detach(_this select 3);

			},_e,10,false,true],_e]];

			waitUntil{if(!alive _u or !alive _e)then{

				_a=a_a select 1;

				_a select 1 removeAction(_a select 2);

				detach(_a select 3);

				true

			}else{false}or(a_a select 1 select 0)};

		}else{

			_u playAction"grabDrag";

			_u forceWalk true;

			["d_a","onEachFrame",{

				_e=_this select 0;

				_u=_this select 1;

				_e setPos(_u modelToWorld[0,1,0]);

				_e setdir(getDir _u+180);

				_e switchMove "AinjPpneMrunSnonWnonDb";

			},[_e,_u]]call BIS_fnc_addStackedEventHandler;

			a_a set[1,[false,_u,_u addAction["Drop",{

				_this select 0 removeaction(_this select 2);

				a_a set[1,[true,-1]];

				["d_a","onEachFrame"]call BIS_fnc_removeStackedEventHandler;

				_this select 3 switchMove"AinjPpneMstpSnonWrflDb_release";

				_this select 0 forceWalk false;

				_this select 0 playMove"amovpknlmstpsraswrfldnon";

			},_e,10],_e]];

			waitUntil{!alive _u or(if(animationState _u=="acinpknlmstpsraswrfldnon_acinpercmrunsraswrfldnon")then{

					["d_a","onEachFrame"]call BIS_fnc_removeStackedEventHandler;

					["d_a","onEachFrame",{

						_e=_this select 0;

						_u=_this select 1;

						_e setPos(_u modelToWorld[-0.18,0.15,0]);

						_e setdir(getDir _u+180);

						_e switchMove"AinjPfalMstpSnonWrflDf_carried_dead";

					},[_e,_u]]call BIS_fnc_addStackedEventHandler;

					waitUntil{!alive _u or(a_a select 1 select 0)};

					true

				}else{false})or(a_a select 1 select 0)

			};

			if !alive _u then{

				_a=a_a select 1;

				a_a set[1,[true,-1]];

				_a select 1 removeAction(_a select 2);

				["d_a","onEachFrame"] call BIS_fnc_removeStackedEventHandler;

				_a select 3 switchMove"AinjPpneMstpSnonWrflDb_release";

				_a select 1 forceWalk false

				//z_a select 1 playMove"amovpknlmstpsraswrfldnon";

			}

		}

	},[],0,false,true,"","_this distance _target<2.1"]]]
};


a_a=[objnull,[true,-1],[false],-1];


while{true}do{

	sid=switch side player do{
		case west:{sid_e=east;sid_e1=independent;west};
		case east:{sid_e=west;sid_e1=independent;east};
		case independent:{sid_e=east;sid_e1=west;independent};
		case sideenemy:{sid_e=west;sid_e1=east;sideenemy};
		case civilian:{sid_e=civilian;sid_e1=civilian;civilian};
	};


	_le=a_a select 0;

	_e=cursortarget;

	if(_e!=_le)then{

		if(a_a select 2 select 0)then{_le removeaction(a_a select 2 select 1);a_a set[2,[false]]};

		if(a_a select 3!=-1)then{_le removeaction(a_a select 3);a_a set[3,-1]};

		_a=a_a select 1;

		_sid=side _e;

		if(_a select 0)then{

			if(_a select 1!=-1)then{_le removeaction(_a select 1);a_a set[1,[true,-1]]};

			if(_sid==sid_e or(_sid==sid_e1))then{

				if(_e iskindof"man")then{

					a_a set[2,[true,_e addaction["Kill",{

						_u=_this select 0;

						_u removeaction(_this select 2);

						if(cursorTarget==_u)then{_u setdamage 1}

					},[],0,true,true,"","_this distance _target<2.1"]]]

				}

			}else{

				if(_sid==sid)then{

					a_a set[2,[true,_e addaction["Get in squad",{

						_this select 0 removeaction(_this select 2);

						crew(_this select 0)join(_this select 1)

					},[],0,false,false]]]

				};

				call _s_d

			}

		}else{
			if(alive(_a select 3))then{

				_v=0;

				if(_e emptyPositions"driver">0)then{_v=1}else{

					if(_e emptyPositions"gunner">0)then{_v=2}else{

						if(_e emptyPositions"commander">0)then{_v=3}else{

							if(_e emptyPositions"cargo">0)then{_v=4}

						}

					}

				};

				if(_v!=0)then{

					a_a set[3,_e addaction["load in",{

						_this select 0 removeAction(_this select 2);

						_a=a_a select 1;

						_a select 1 removeaction(_a select 2);

						a_a set[3,-1];

						_u=_a select 3;

						detach _u;

						switch(_this select 3)do{

							case 1:{_u moveInDriver(_this select 0)};

							case 2:{_u moveingunner(_this select 0)};

							case 3:{_u moveincommander(_this select 0)};

							case 4:{_u moveincargo(_this select 0)}

						};

						a_a set[1,[true,-1]]

					},_v,8,true]];

				}

			}

		};

		a_a set[0,_e]

	}

};