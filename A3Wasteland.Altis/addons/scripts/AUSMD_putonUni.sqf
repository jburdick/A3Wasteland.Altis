_uniform = uniform cursorTarget;
if(isNull _uniform) exitWith 
{
	hint "An error occurred somewhere...";
};
//_items = uniformItems player; - no command to clear uniform?
removeUniform cursorTarget;
hint "Switching Uniform...";
sleep 2;
player forceAddUniform _uniform;
