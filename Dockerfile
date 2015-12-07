FROM busybox
MAINTAINER Joe Bowers <joerbowers@gmail.com>

ADD log-daddy.sh log-daddy.sh
CMD ["/log-daddy.sh"]
