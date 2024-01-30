#!/bin/bash
#set -x

############################################################################################
##
## Script to trigger scheduled MDATP Definition Update
##
############################################################################################

# Define variables
log="/var/log/mdatpschedupdate.log"
appname="Scheduled MDATP Definition Update"
exec 1>> $log 2>&1

echo "# $(date) | Starting $appname"

/usr/local/bin/mdatp definitions update >/dev/null

echo "# $(date) | Stopping $appname"

exit 0