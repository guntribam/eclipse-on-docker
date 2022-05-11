# eclipse-on-docker

Eclipse - 2020-06 in a Docker container

## Requirements

* Docker [without `sudo`](http://docs.docker.io/installation/ubuntulinux/#giving-non-root-access)
* An X11 socket

## Quickstart

`docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v "`pwd`":/asdf/workspace guntribam/eclipse-on-docker`

## Help! I started the container but I don't see the Eclipse screen

You might have an issue with the X11 socket permissions since the default user
used by the base image has an user and group ids set to `1000`, in that case
you can run either create your own base image with the appropriate ids or run
`xhost +` on your machine and try again.
