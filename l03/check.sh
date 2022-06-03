#DATE: 05/21/2022
#DESCRIPTION: Take a series of arguments, that are either paths/directories or the flag "-d". If the "-d" flag precedes the argument, check the argument is a directory that exists. Else check that it is a path that exists.
#EXAMPLE CALL: ./check.sh /isThisPath -d /isThisDirectory 

var1="placeholder"
while [ $# -gt 0 ] ; do
	var2=$1
	
	if [ "$var2" = -d ] ;  then
		shift
		var1=$var2
		continue
	fi #idc 

	if  [ "$var1" = -d ] ; then
		if [ -d "$var2" ] ; then
			echo "$var2 is a directory"
		else
			echo "$var2 is not a directory"
   		fi

	else
		if [ -e "$var2" ] ; then
			echo  "$var2 exists "
		else 
			echo "$var2 does not exist"
		fi
	fi

	shift
	var1=$var2
done
