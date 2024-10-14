FROM jlesage/baseimage-gui:ubuntu-20.04

MAINTAINER Dave <davidm.phillips@gmail.com>

LABEL Description="Ubuntu Lite Oscar Image" Vendor="dphillips" Version="1.0"
ARG OSCAR_VERSION=1.5.3
ENV APP_NAME="OSCAR"

RUN apt-get update
RUN apt-get install -y software-properties-common qt5-default libqt5serialport5$

RUN     wget  https://www.apneaboard.com/OSCAR/${OSCAR_VERSION}/oscar_${OSCAR_V$
RUN     dpkg -i *.deb
RUN rm -rf /var/lib/apt/lists/*
RUN rm *.deb
#RUN add-pkg xterm
COPY startapp.sh /startapp.sh
