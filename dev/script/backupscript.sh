#!/bin/bash
DIR=`date +%d-%m-%y+"${DB_NAME}"`
DEST=~/db_backups/$DIR
mkdir $DEST
mongodump -h localhost:27017 -d my_db_name -o $DEST
