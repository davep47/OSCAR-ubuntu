# OSCAR-ubuntu
Minimal Ubuntu image with OSCAR CPAP software
I put this together after trying to get https://github.com/rogerrum/docker-oscar running.

I was getting errors(probably my fault :) ) so decided to try and put together an image myself.

The base image I got from https://github.com/jlesage/docker-baseimage-gui
### Create the image
Download the repository and change to the app folder and build it.

```
docker build -t oscar-autostart .
```

### Build the docker container

```
docker-compose up -d
```
### Accessing the GUI

Assuming that container's ports are mapped to the same host's ports, the
graphical interface of the application can be accessed via:

  * A web browser:
```
http://<HOST IP ADDR>:5800
```

  * Any VNC client:
```
<HOST IP ADDR>:5900
```
### Running the app for the first time
The first time you run the app you need to create a profile by clicking on "New Profile" on the right.
At the very least you have to enter your name.

Software Licensing Information
------------------------------
DOCKER-OSCAR is released under the GNU GPL v3 License. Please see below for a note on giving correct attribution
in redistribution of derivatives.

It is built using Qt SDK (Open Source Edition), available from http://qt.io.

Redistribution of derivatives ( a note added by Mark Watins {OSCAR is based on Sleepyhead})
-----------------------------
Mark Watkins created this software to help lessen the exploitation of others. Seeing his work being used to exploit others
is incredibly un-motivational, and incredibly disrespectful of all the work he put into this project.

If you plan on reselling any derivatives of SleepyHead, I specifically request that you give due credit and
link back, mentioning clearly in your advertising material, software installer and about screens that your
derivative "is based on the free and open-source software SleepyHead available from http://sleepyhead.jedimark.net,
developed and copyright by Mark Watkins (C) 2011-2018."

It is not enough to reference that your derivative "is based on GPL software".
