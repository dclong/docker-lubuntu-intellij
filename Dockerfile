FROM dclong/lubuntu-jdk

RUN apt-get update \
    && apt-get install -y ubuntu-make \
    && umake ide idea /opt/idea/ \
    && apt-get autoremove \
    && apt-get autoclean

COPY settings /settings
COPY scripts /scripts

