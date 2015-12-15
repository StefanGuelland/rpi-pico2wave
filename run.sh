$!/bin/bash
echo "Command: pico2wave --lang de-DE -w lookdave.wav \"Hallo, dies ist ein kleiner Test.\" && aplay lookdave.wav"
docker run -it --rm -v /dev/snd:/dev/snd --privileged stefanguelland/isys-pico2wave
