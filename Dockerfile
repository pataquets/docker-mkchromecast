FROM pataquets/ubuntu:focal

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
      ffmpeg \
      mkchromecast \
      mkchromecast-alsa \
      mkchromecast-gstreamer \
      mkchromecast-pulseaudio \
      pulseaudio-utils \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

ENTRYPOINT [ "mkchromecast" ]
