FROM didrocks/snapcraft

RUN sed -i "s/archive/de5.archive/" /etc/apt/sources.list

RUN apt-get update -qq && apt-get upgrade -qq && apt-get install -y default-jdk ca-certificates-java
