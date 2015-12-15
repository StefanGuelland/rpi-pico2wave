FROM resin/rpi-raspbian:latest

MAINTAINER Stefan Guelland <docker@sguelland.de>

RUN apt-get update && \
    apt-get install -y libpopt-dev alsa-utils wget  && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN wget http://www.dr-bischoff.de/raspi/pico2wave.deb; dpkg --install pico2wave.deb

CMD ["/bin/bash"]

#pico2wave --lang de-DE -w lookdave.wav "Hallo, dies ist ein kleiner Test." && aplay lookdave.wav
