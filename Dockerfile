# Mesos-Slave
#
# VERSION 0.0.1

FROM nickpoorman/docker-mesos
MAINTAINER Nick Poorman <mail@nickpoorman.com>

ENTRYPOINT ["mesos-slave"]
