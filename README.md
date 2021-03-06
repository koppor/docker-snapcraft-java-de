# docker-snapcraft-java-de [![](https://images.microbadger.com/badges/image/koppor/snapcraft-java-de.svg)](https://microbadger.com/images/koppor/snapcraft-java-de "Get your own image badge on microbadger.com")

Snapcraft package to enable building Java-based Snaps.

This is an improved version of [didrocks/snapcraft/](https://hub.docker.com/r/didrocks/snapcraft/) with latest Ubuntu, Germany-based Debian mirrors, required Java-packages pre-installed, and a correctly setup locale definition.
This should improve building on Travis significantly.

This image addresses https://bugs.launchpad.net/snapcraft/+bug/1699218 and is available on Dockerhub.

Other alternatives are:

- https://hub.docker.com/r/snapcore/snapcraft/~/dockerfile/ - uses Ubuntu Xenial
- https://github.com/chihchun/snapcraft-docker - for locally running; not available on Dockerhub

Usage:

    docker run -it -v /c/git-repositories/YOURREPO:/tmp/snap koppor/snapcraft-java-de bash

Then `cd` into `/tmp/snap` and do your usual snap work.
Typically, `snapcraft build` to check whether the build works and just `snapcraft` to build and create a `.snap` file.
