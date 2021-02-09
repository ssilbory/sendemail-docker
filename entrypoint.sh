#!/bin/sh 
help(){
    echo 'The script requires the following arguments To From Subject "Body" Server.'
    echo "Optionally you can supply a user, password and additional arguments to sendEmail."
    echo
    echo 'Examples:'
    echo 'docker run ssilbory/sendemail junkmail@silbory junkmail@silbory.com "Hey" "Important infomation!" smtp.silbory.com'
    echo 'docker run ssilbory/sendemail junkmail@silbory junkmail@silbory.com "Hey" "Important infomation!" smtp.siblory sam' "'\$vaqqpgq!znnnn'"
    echo 'docker run ssilbory/sendemail junkmail@silbory junkmail@silbory.com "Hey" "Important infomation!" smtp.gmail.com:587 sam.silbory' "'\$vaqmqpgq!znnnn' '-o tls=yes'"
    echo "Note that to use gmail in the above example you need to create an app password for gmail, and force tls."
    exit 1
}

[ "$1" = "-h" ] && help
[ "$1" = "--help" ] && help

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
