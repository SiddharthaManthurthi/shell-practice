#! /bin/bash
##### Special Variables #####   
echo " All arguments passed to the script: $@"
echo " Number of vars passed to the script: $#"
echo " Script name is: $0"
echo " present directory is: $PWD"
echo " who is rnning the script: $USER"
echo " home directory of the current user: $HOME"
echo " process id of the current script: $$"
sleep 100 &
echo " process id of the last background command: $!"
echo " all args passed to the script:$@"
