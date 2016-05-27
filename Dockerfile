FROM java:7
MAINTAINER zetas

ADD monitorcenter-assembly.tar.gz /

WORKDIR /

RUN tar -xvzf monitorcenter-assembly.tar.gz

WORKDIR /monitorcenter

ENTRYPOINT ["bin/server.sh", "start"]


