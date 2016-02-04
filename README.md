# docker-cronlock

> Docker container for cron/cronlock.

## Usage
* The global config file can be mounted directly at `/etc/cronlock.conf`.
* A directory containing initialization scripts can be mounted at `/docker-cronlock-init.d`:
```shell
docker run -d \
	-v $PWD/cronlock.conf:/etc/cronlock.conf \
	-v $PWD/init:/docker-cronlock-init.d \
	bernardmcmanus/docker-cronlock
```

* If you need to pass additional flags to cron, you can override the default command in your Dockerfile:
```dockerfile
CMD ["cron", "-f"]
```

Detailed instructions for configuring cronlock can be found [here](https://github.com/kvz/cronlock).
