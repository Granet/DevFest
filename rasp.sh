#!/bin/bash


#Prima parte

echo 2 > /sys/class/gpio/export
echo 3 > /sys/class/gpio/export
echo 4 > /sys/class/gpio/export
echo 5 > /sys/class/gpio/export
echo 6 > /sys/class/gpio/export
echo 7 > /sys/class/gpio/export
echo 8 > /sys/class/gpio/export
echo 9 > /sys/class/gpio/export
echo 10 > /sys/class/gpio/export
echo 11 > /sys/class/gpio/export
echo 12 > /sys/class/gpio/export
echo 13 > /sys/class/gpio/export
echo 14 > /sys/class/gpio/export
echo 15 > /sys/class/gpio/export
echo 16 > /sys/class/gpio/export
echo 17 > /sys/class/gpio/export


#Out/In

echo out > /sys/class/gpio/gpio2/direction
echo out > /sys/class/gpio/gpio3/direction
echo out > /sys/class/gpio/gpio4/direction
echo out > /sys/class/gpio/gpio5/direction
echo out > /sys/class/gpio/gpio6/direction
echo out > /sys/class/gpio/gpio7/direction
echo out > /sys/class/gpio/gpio8/direction
echo out > /sys/class/gpio/gpio9/direction
echo out > /sys/class/gpio/gpio10/direction
echo out > /sys/class/gpio/gpio11/direction
echo out > /sys/class/gpio/gpio12/direction
echo out > /sys/class/gpio/gpio13/direction
echo out > /sys/class/gpio/gpio14/direction
echo out > /sys/class/gpio/gpio15/direction
echo out > /sys/class/gpio/gpio16/direction
echo out > /sys/class/gpio/gpio17/direction


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
		    	echo 1 > /sys/class/gpio/gpio2/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio2/value
		    	exit
		    ;;
#
		    --cucina)
		    	echo 1 > /sys/class/gpio/gpio3/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio3/value
		    	exit
		    ;;

		    --bagno)
		    	echo 1 > /sys/class/gpio/gpio4/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio4/value
		    	exit
		    ;;
		    
		    --matrimoniale)
		    	echo 1 > /sys/class/gpio/gpio5/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio5/value
		    	exit
		    ;;
		    
		    --letto)
		    	echo 1 > /sys/class/gpio/gpio6/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio6/value
		    	exit
		    ;;
		    
		    --tv)
		    	echo 1 > /sys/class/gpio/gpio7/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio7/value
		    	exit
		    ;;
		    
		    --tutteluci) #Da configurare ancora
		    	echo 1 > /sys/class/gpio/gpio8/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio8/value
		    	exit
		    ;;
		    
		    --luceesterne)
		    	echo 1 > /sys/class/gpio/gpio9/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio9/value
		    	exit
		    ;;
		    
		    --tapparellaon1)
		    	echo 1 > /sys/class/gpio/gpio10/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio10/value
		    	exit
		    ;;
		    
		    --tapparellaoff1)
		    	echo 1 > /sys/class/gpio/gpio11/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio11/value
		    	exit
		    ;;
		    
		    --tapparellaon2)
		    	echo 1 > /sys/class/gpio/gpio12/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio12/value
		    	exit
		    ;;
		    
		    --tapparellaoff2)
		    	echo 1 > /sys/class/gpio/gpio13/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio13/value
		    	exit
		    ;;
		    
		    --tapparellegeneraleon)
		    	echo 1 > /sys/class/gpio/gpio14/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio14/value
		    	exit
		    ;;

		    --tapparellegeneraleoff)
		    	echo 1 > /sys/class/gpio/gpio15/value
		    	sleep 0.5
		    	echo 0 > /sys/class/gpio/gpio15/value
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