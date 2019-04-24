FROM debian:stable-slim 
RUN apt-get update && apt-get install -y sendemail libio-socket-ssl-perl ca-certificates && apt-get clean && rm -r /var/lib/apt/lists/*
COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]

