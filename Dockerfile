# Mesos-Slave
#
# VERSION 0.22.0

FROM nickpoorman/mesos:0.22.0
MAINTAINER Nick Poorman <mail@nickpoorman.com>

ENTRYPOINT ["mesos-slave"]
