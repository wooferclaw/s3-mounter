FROM --platform=linux/amd64 otomato/goofys:latest
RUN apk update && apk add rsync
RUN rsync --version
WORKDIR /otomato
RUN mkdir /home/s3
RUN mkdir /home/s4
COPY run-hack.sh .
RUN chmod +x run-hack.sh
CMD ./run-hack.sh
