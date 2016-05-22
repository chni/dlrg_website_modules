#!/bin/bash

#nur nach /opt/flags installieren, sonst Skripte anpassen

WWW_ROOT=/var/www/html/
DIR_NAME=flags
INST_PATH=/opt/
TEMPDIR=temp

WEBPATH=$WWW_ROOT$DIR_NAME
LOCALPATH=$INST_PATH$DIR_NAME

mkdir -p $WEBPATH
mkdir -p $LOCALPATH

cp -rf templates $LOCALPATH
mkdir -p $LOCALPATH/$TEMPDIR

cp -rf icons $WEBPATH
cp getwetter.sh $LOCALPATH
cp setsmallwidget.sh $LOCALPATH
cp setmap.sh $LOCALPATH
cp resetstate.sh $LOCALPATH

ln -sf $LOCALPATH/setmap.sh /usr/bin/setmap
ln -sf $LOCALPATH/setsmallwidget.sh /usr/bin/setsmallwidget
ln -sf $LOCALPATH/resetstate.sh /usr/bin/resetstate

# Edit this file to introduce tasks to be run by cron.
# 
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
# 
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any').# 
# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
# 
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
# 
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
# 
# For more information see the manual pages of crontab(5) and cron(8)
# 
# m h  dom mon dow   command
#* * * * * /usr/bin/setsmallwidget
#* * * * * /usr/bin/setmap
#45 18 * * * /usr/bin/resetstate

