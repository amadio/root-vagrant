#!/usr/bin/env bash

set -e

git clone http://root.cern/git/root.git /usr/src/root

mkdir /tmp/build && cd /tmp/build

cmake /usr/src/root \
	-DCMAKE_INSTALL_PREFIX=/usr \
	-DPYTHON_EXECUTABLE=$(which python3) \
	-Dgnuinstall=ON \
        -Dall=ON \
        -Dcxx14=ON \
        -Dfail-on-missing=ON \
        -Dgnuinstall=ON \
        -Drpath=ON \
        -Dbuiltin_afterimage=OFF \
        -Dbuiltin_ftgl=OFF \
        -Dbuiltin_gl2ps=OFF \
        -Dbuiltin_glew=OFF \
        -Dbuiltin_unuran=ON \
        -Dbuiltin_vc=ON \
        -Dbuiltin_vdt=ON \
        -Dbuiltin_veccore=ON \
        -Dbuiltin_xrootd=ON \
        -Darrow=OFF \
        -Dcastor=OFF \
        -Dchirp=OFF \
        -Dgeocad=OFF \
        -Dglite=OFF \
        -Dhdfs=OFF \
        -Dmonalisa=OFF \
        -Doracle=OFF \
        -Dpythia6=OFF \
        -Drfio=OFF \
        -Dsapdb=OFF \
        -Dsrp=OFF

cmake --build .
cmake --build . --target install

rm -rf /tmp/* /usr/src/root
