_target= (cursorTarget);
_uniform = uniform _target;

removeUniform _target;
hint "Switching Uniform...";
sleep 2;
player forceAddUniform _uniform;
