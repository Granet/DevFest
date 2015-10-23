#!/bin/bash


#Prima parte

echo 4 > /sys/class/gpio/export
echo 17 > /sys/class/gpio/export
echo 27 > /sys/class/gpio/export
echo 22 > /sys/class/gpio/export
echo 5 > /sys/class/gpio/export
echo 6 > /sys/class/gpio/export
echo 13 > /sys/class/gpio/export
echo 19 > /sys/class/gpio/export
echo 26 > /sys/class/gpio/export
echo 18 > /sys/class/gpio/export
echo 23 > /sys/class/gpio/export
echo 24 > /sys/class/gpio/export
echo 25 > /sys/class/gpio/export
echo 12 > /sys/class/gpio/export
echo 16 > /sys/class/gpio/export


#Out/In

echo out > /sys/class/gpio/gpio4/direction
echo out > /sys/class/gpio/gpio17/direction
echo out > /sys/class/gpio/gpio27/direction
echo out > /sys/class/gpio/gpio22/direction
echo out > /sys/class/gpio/gpio5/direction
echo out > /sys/class/gpio/gpio6/direction
echo out > /sys/class/gpio/gpio13/direction
echo out > /sys/class/gpio/gpio19/direction
echo out > /sys/class/gpio/gpio26/direction
echo out > /sys/class/gpio/gpio18/direction
echo out > /sys/class/gpio/gpio23/direction
echo out > /sys/class/gpio/gpio24/direction
echo out > /sys/class/gpio/gpio25/direction
echo out > /sys/class/gpio/gpio12/direction
echo out > /sys/class/gpio/gpio16/direction


#Root 

if [ $USER != 'root' ]; then
echo "[/!\]Bisogna essere root per eseguire questo programma, settare 777 sul file."
exit
fi


#Lettura argomenti

for i in "$@"
	do
		case $i in
		    --soggiornoluce0)
		    	echo 1 > /sys/class/gpio/gpio4/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio4/value
		    	exit
		    ;;
		     --soggiornoluce1)
		    	echo 1 > /sys/class/gpio/gpio4/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio4/value
		    	exit
		    ;;

		    --cucinaluce0)
		    	echo 1 > /sys/class/gpio/gpio17/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio17/value
		    	exit
		    ;;
		     --cucinaluce1)
		    	echo 1 > /sys/class/gpio/gpio17/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio17/value
		    	exit
		    ;;

		    --bagnoluce0)
		    	echo 1 > /sys/class/gpio/gpio27/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio27/value
		    	exit
		    ;;
		    --bagnoluce1)
		    	echo 1 > /sys/class/gpio/gpio27/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio27/value
		    	exit
		    ;;
		    
		    --letto2luce0)
		    	echo 1 > /sys/class/gpio/gpio22/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio22/value
		    	exit
		    ;;
		     --letto2luce1)
		    	echo 1 > /sys/class/gpio/gpio22/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio22/value
		    	exit
		    ;;
		    
		    --letto1luce0)
		    	echo 1 > /sys/class/gpio/gpio5/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio5/value
		    	exit
		    ;;
		    --letto1luce1)
		    	echo 1 > /sys/class/gpio/gpio5/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio5/value
		    	exit
		    ;;
		    --soggiornotelevisione0)
		    	echo 1 > /sys/class/gpio/gpio6/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio6/value
		    	exit
		    ;;
		    --soggiornotelevisione1)
		    	echo 1 > /sys/class/gpio/gpio6/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio6/value
		    	exit
		    ;;
		    
		    --tutteluce0)
		    	echo 1 > /sys/class/gpio/gpio13/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio13/value
		    	exit
		    ;;
		    
		    --tutteluce1)
		    	echo 1 > /sys/class/gpio/gpio13/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio13/value
		    	exit
		    ;;
		    
		    --esternoluce0)
		    	echo 1 > /sys/class/gpio/gpio19/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio19/value
		    	exit
		    ;;
		    --esternoluce1)
		    	echo 1 > /sys/class/gpio/gpio19/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio19/value
		    	exit
		    ;;
		    
		    --letto1serranda1)
		    	echo 1 > /sys/class/gpio/gpio26/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio26/value
		    	exit
		    ;;
		    
		    --letto1serranda0)
		    	echo 1 > /sys/class/gpio/gpio18/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio18/value
		    	exit
		    ;;
		    
		    --soggiornoserranda1)
		    	echo 1 > /sys/class/gpio/gpio23/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio23/value
		    	exit
		    ;;
		    
		    --soggiornoserranda0)
		    	echo 1 > /sys/class/gpio/gpio24/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio24/value
		    	exit
		    ;;
		    
		    --tutteserranda1)
		    	echo 1 > /sys/class/gpio/gpio25/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio25/value
		    	exit
		    ;;

		    --tutteserranda0)
		    	echo 1 > /sys/class/gpio/gpio12/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio12/value
		    	exit
		    ;;
		    
		    --tutteallarme0)
		    	echo 1 > /sys/class/gpio/gpio16/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio16/value
		    	exit
		    ;;
		    --tutteallarme1)
		    	echo 1 > /sys/class/gpio/gpio16/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio16/value
		    	exit
		    ;;
		    
		    *)
		       echo "default"
		    ;;
		esac
	done
