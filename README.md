# docker-hostmapper
Updates automatically your '/etc/hosts' of your running containers.

# About
Basically it fetch your container name and the IP Address and add to your base machine "/etc/hosts" automatically.

# USAGE

The easiest way is to use with docker image

$ docker run -d --name docker-hostmapper --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v /etc/hosts:/tmp/source/hosts sjkeerthi/docker-hostmapper:latest

Note: the --restart=always option will make the container start automatically with your computer (recommended).

Tested on Linux based Machines.

# Idea
More Ideas and contribution are welcome to make this more efficient.
