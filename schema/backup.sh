#!/bin/bash

mysqldump --user="$MYSQL_USER" --password="$MYSQL_USER_PWD" dev > /dev-mysql-backup.sql
