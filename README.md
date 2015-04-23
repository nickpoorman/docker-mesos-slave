# docker-mesos-slave

A mesos slave Docker entrypoint.

Uses [nickpoorman/docker-mesos](https://github.com/nickpoorman/docker-mesos)

## example

```
docker -H tcp://${SLAVE_IP_0}:2375 run -d \
    --restart=always \
    -p 5051:5051 \
    --net=host \
    -e MESOS_MASTER=zk://${HOST_IP_0}:2181,${HOST_IP_1}:2181,${HOST_IP_2}:2181/mesos \
    -e MESOS_LOG_DIR=/var/log/mesos \
    -e MESOS_HOSTNAME=${SLAVE_IP_0} \
    -e MESOS_IP=${SLAVE_IP_0} \
    -e MESOS_ISOLATOR=cgroups/cpu,cgroups/mem \
    -e MESOS_CONTAINERIZERS=docker,mesos \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /var/run/docker.sock:/run/docker.sock \
    -v /usr/bin/docker:/usr/bin/docker \
    -v /sys:/sys \
    -v /proc:/proc \
   nickpoorman/docker-mesos-slave
```
