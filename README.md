fah-web-client
==============

The Open-Source front-end for fah-client.


This client uses [SCons](http://scons.org/doc/2.1.0/HTML/scons-user/index.html) build tool


## Docker Usage:
docker build . -t fah-client:fah-client \
docker run -ti --volume ${PDW}:/work fah-client:fah-client bash \

build and run https://github.com/CauldronDevelopmentLLC/cbang.git && scons \

I suppose that the scons dist gets run then the tar file is used somehow in the distro \

## TODO:

Create a stop for each individual device 

