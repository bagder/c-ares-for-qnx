# c-ares-for-qnx

Scripts and configs for building c-ares for [QNX](https://blackberry.qnx.com/).

## Download packages

c-ares packages for QNX are made available for download at https://qnx.haxx.se/

## Prerequisites

1. Install the QNX SDK environments for 7.0, 7.1 and 8.0.
2. Edit `setup` to make the path identify your chosen SDP install paths

## Howto

1. download a release archive
2. `./mkrelease.sh [tarball]`

Wait a while

3. Sign the release per the instructions shown in the terminal
4. Upload the tarballs to the release site

## Build fixes

When a fix is done to the tarballs/releases that runs on the same c-ares release
tarball as before, bump the build number by providing the new build number to
the `mkrelease.sh` script. A second build is done like:

    ./mkrelease.sh [tarball] 2
