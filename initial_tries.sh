history | grep -E -v "input t*"; 
history|cut -c 8- |grep -e "input" | grep -e -v "input *" command="input"; 
history | grep "$command" | cut -c 8- | grep -v ".* $command .*" ; 
