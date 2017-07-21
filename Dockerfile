FROM didrocks/snapcraft

RUN sed -i "s/archive/de5.archive/" /etc/apt/sources.list

RUN apt-get update -qq &&\
    apt-get upgrade -qq &&\
    apt-get install -y -qq default-jre-headless default-jdk openjfx ca-certificates-java &&\
    apt-get clean &&\
    apt-get autoremove --purge -qq&&\
    rm -rf /var/lib/apt/lists/*
