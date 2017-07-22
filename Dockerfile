FROM ubuntu:zesty

# use nearby German mirror
RUN sed -i "s/archive/de5.archive/" /etc/apt/sources.list

RUN apt-get update -qq &&\
    apt-get dist-upgrade -qq &&\
    apt-get install -y default-jre-headless default-jdk openjfx ca-certificates-java snapcraft &&\
    apt-get clean -qq&&\
    apt-get autoremove --purge -qq
