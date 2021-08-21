FROM ubuntu:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN apt-get -qq update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -qq install python3 python3-pip software-properties-common

#Copying All Source
COPY . .

#Starting Bot
CMD ["python3", "rdp.py"]
