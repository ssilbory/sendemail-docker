# sendemail-docker
A simple container to send an email to a smtp server

Container requires the following arguments in this order: To From Subject "Body" Server.
Optionally you can supply a user, password and additional arguments to sendEmail.

Examples:

- docker run ssilbory/sendemail junkmail@silbory junkmail@silbory.com "Hey" "Important infomation!" smtp.silbory.com

- docker run ssilbory/sendemail junkmail@silbory junkmail@silbory.com "Hey" "Important infomation!" smtp.siblory sam '$vaqqpgq!znnnn'

- docker run ssilbory/sendemail junkmail@silbory junkmail@silbory.com "Hey" "Important infomation!" smtp.gmail.com:587 sam.silbory '$vaqmqpgq!znnnn' 

Note that to use gmail in the above example you need to create an app password for gmail.


If you want to run the container with a shell you'll need to escape the entry point script.

docker run -it --entrypoint bash ssilbory/sendemail
