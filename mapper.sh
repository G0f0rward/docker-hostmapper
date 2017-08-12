#!/bin/sh
## Script developed by S.J.Keerthiraja Email: sjkeerthi@gmail.com
## Any improvement will really help 

while :; do
sleep 20
sed -e '/##Docker HostMapper Start/,/##Docker HostMapper End/d' /tmp/source/hosts > /tmp/source/hosts.tmp; cat /tmp/source/hosts.tmp > /tmp/source/hosts; echo -e "##Docker HostMapper Start" >> /tmp/source/hosts; docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}} {{.Name}}' $(docker ps -q) |tr -d '/' >> /tmp/source/hosts; echo -e "##Docker HostMapper End" >> /tmp/source/hosts
done
