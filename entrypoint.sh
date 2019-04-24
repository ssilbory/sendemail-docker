#!/bin/sh -x
TO=$1
FROM=$2
SUBJECT=$3
BODY=$4
SERVER=$5
USER=$6
PASSWORD=$7
if [ -n "$7" ];then
  sendEmail -t "$TO" -f "$FROM" -u \""$SUBJECT"\" -m \""${BODY}"\" -s "$SERVER" -xu "$USER" -xp "$PASSWORD" $8
else
  sendEmail -t "$TO" -f "$FROM" -u \""$SUBJECT"\" -m \""${BODY}"\" -s "$SERVER" $6
fi
     
