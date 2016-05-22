#!/bin/bash

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

