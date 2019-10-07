#!/bin/bash
# Create db directory for Wodby
mkdir /home/ubuntu/d8-sandbox/mariadb-init
cd /home/ubuntu/d8-sandbox/mariadb-init

# Create and download sql dump from RDS
mysqldump -h d8test.cctsdyllbedk.us-east-1.rds.amazonaws.com -u d8test -p'd8test123' d8test > freshdb.sql
