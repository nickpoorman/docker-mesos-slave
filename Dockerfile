# Mesos-Slave
#
# VERSION 0.0.1

FROM nickpoorman/mesos:0.0.1
MAINTAINER Nick Poorman <mail@nickpoorman.com>

ENTRYPOINT ["mesos-slave"]
