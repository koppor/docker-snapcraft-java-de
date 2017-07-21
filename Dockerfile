FROM ubuntu:zesty

# use nearby German mirror
RUN sed -i "s/archive/de5.archive/" /etc/apt/sources.list

RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

RUN apt-get update -qq && apt-get install -y software-properties-common && add-apt-repository ppa:webupd8team/java

RUN apt-get update -qq &&\
    apt-get dist-upgrade -qq &&\
    apt-get install -y oracle-java8-installer ca-certificates-java snapcraft &&\
    apt-get clean -qq&&\
    apt-get autoremove --purge -qq&&\
    rm -rf /var/lib/apt/lists/*
