#!/bin/bash

sleep 30

cd /scripts/schema 

mysql --user="$MYSQL_USER" --password="$MYSQL_USER_PWD" -h 127.0.0.1 dev < schema.sql
