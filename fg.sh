echo enter the log of the user
read name
logindetails=`who|grep –w “$name” | grep “tty” `


if [ $? –ne 0 ]


then
echo $name has not logged yet 

exit
fi
loginhours=`echo “$logindetails” | cut –c 26,27`


loginminuts=`echo “$logindetails” | cut –c 29 - 30`




hoursnow=`date | cut –c 12,13`


minnow =`date | cut –c 15,16`


hour=`expr  $loginhours - $hoursnow`


min=`expr $loginminuts - $minnow`


echo  “ $name is working since $hour Hrs - $min Minuts”



