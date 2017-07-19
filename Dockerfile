FROM didrocks/snapcraft

RUN sed -i "s/archive/de5.archive/" /etc/apt/sources.list

RUN apt-get update -qq &&\
#    apt-get upgrade -qq &&\ # snapcraft has to stay the old version: https://bugs.launchpad.net/snapcraft/+bug/1705312
    apt-get install -y default-jdk ca-certificates-java &&\
    apt-get clean -qq&&\
    apt-get autoremove --purge -qq&&\
    rm -rf /var/lib/apt/lists/*
