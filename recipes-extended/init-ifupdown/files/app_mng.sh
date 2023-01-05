#!/bin/bash

#######################
#####  Define  ########
#######################
LOCK_FILE=/tmp/aim_master.lock

#######################
### Check lock file ###
#######################
if [ -f "$LOCK_FILE" ]; then
echo '[lock file exist]'
exit 0
fi

#######################                                                           
## Create lock file ##                                                           
#######################
echo '[create lock file]'
echo "`date`" >  $LOCK_FILE

#######################      
#####  Define  ########      
#######################
LOG_FILE=/root/nh_gateway/log

APP_NAME="/usr/bin/aim_master"

#######################                                                           
### Loop forever #####                                                            
#######################                                                           
while [ 1 ]; do
          
###########check app###################
if [ ! "$( pgrep "$APP_NAME")" ]; then                                                                             
                                                                                

#######################
##### Run app     #####
#######################

echo '[run app]'
cd $HOME
#$APP_NAME --platform linuxfb > /dev/null 2>&1
$APP_NAME --platform linuxfb
echo '[exit app]'

###########end check app############
fi

echo '[sleep 3s]'
sleep 3

#######################
### End loop forever ##
#######################
done

echo '[remove lock file]'
rm $LOCK_FILE

exit 0

