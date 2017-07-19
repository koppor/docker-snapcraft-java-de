# docker-snapcraft-java-de

This is an improved version of [didrocks/snapcraft/](https://hub.docker.com/r/didrocks/snapcraft/) with Germany-based Debian mirrors and required Java-packages pre-installed.
This should improve building on Travis significantly.

Usage:

    docker run -it -v /c/git-repositories/YOURREPO:/tmp/snap koppor/docker-snapcraft-java-de bash

Then `cd` into `/tmp/snap` and do your usual snap work.
Typically, `snapcraft build` to check the build.
