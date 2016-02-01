# docker-cronlock
#
# VERSION   0.1.0

FROM ubuntu
MAINTAINER Bernard McManus <bernard.mcmanus.iv@gmail.com>

RUN apt-get -y install wget
RUN mkdir /docker-cronlock-init.d
RUN wget https://raw.github.com/kvz/cronlock/master/cronlock -O /usr/bin/cronlock
RUN chmod +x /usr/bin/cronlock

ADD ./entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]
