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
		    --salotto)
		    	echo 1 > /sys/class/gpio/gpio4/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio4/value
		    	exit
		    ;;

		    --cucina)
		    	echo 1 > /sys/class/gpio/gpio17/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio17/value
		    	exit
		    ;;

		    --bagno)
		    	echo 1 > /sys/class/gpio/gpio27/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio27/value
		    	exit
		    ;;
		    
		    --matrimoniale)
		    	echo 1 > /sys/class/gpio/gpio22/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio22/value
		    	exit
		    ;;
		    
		    --letto)
		    	echo 1 > /sys/class/gpio/gpio5/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio5/value
		    	exit
		    ;;
		    
		    --tv)
		    	echo 1 > /sys/class/gpio/gpio6/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio6/value
		    	exit
		    ;;
		    
		    --tutteluci)
		    	echo 1 > /sys/class/gpio/gpio13/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio13/value
		    	exit
		    ;;
		    
		    --luceesterne)
		    	echo 1 > /sys/class/gpio/gpio19/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio19/value
		    	exit
		    ;;
		    
		    --tapparellaon1)
		    	echo 1 > /sys/class/gpio/gpio26/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio26/value
		    	exit
		    ;;
		    
		    --tapparellaoff1)
		    	echo 1 > /sys/class/gpio/gpio18/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio18/value
		    	exit
		    ;;
		    
		    --tapparellaon2)
		    	echo 1 > /sys/class/gpio/gpio23/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio23/value
		    	exit
		    ;;
		    
		    --tapparellaoff2)
		    	echo 1 > /sys/class/gpio/gpio24/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio24/value
		    	exit
		    ;;
		    
		    --tapparellegeneraleon)
		    	echo 1 > /sys/class/gpio/gpio25/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio25/value
		    	exit
		    ;;

		    --tapparellegeneraleoff)
		    	echo 1 > /sys/class/gpio/gpio12/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio12/value
		    	exit
		    ;;
		    
		    --allarme)
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
