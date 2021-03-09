FROM cypress/included:6.5.0

ENV USER=root

RUN apt-get update -qqy \
    && apt-get install -qqyf \
        bash \
        x11vnc xvfb \
    && apt-get -qqy clean \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

COPY start-vnc.sh /opt/bin/

RUN chmod 777 /opt/bin/start-*.sh

ENV SCREEN_WIDTH 1360
ENV SCREEN_HEIGHT 1020
ENV SCREEN_DEPTH 24
ENV SCREEN_DPI 96
ENV DISPLAY :99.0
ENV DISPLAY_NUM 99

RUN mkdir -p /tmp/.X11-unix && chmod 1777 /tmp/.X11-unix

EXPOSE 5900

ENTRYPOINT []