# docker-cronlock

> Docker container for cron/cronlock.

A directory containing `cronlock.conf` as well as initialization scripts can be mounted at `/docker-cronlock-init.d`:

```
docker run -d -v $PWD/config:/docker-cronlock-init.d bernardmcmanus/docker-cronlock
```

Detailed instructions for configuring cronlock can be found [here](https://github.com/kvz/cronlock).
