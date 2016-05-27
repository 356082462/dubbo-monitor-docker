FROM java:7
MAINTAINER zetas

ADD monitorcenter-assembly.tar.gz /

RUN tar -xvzf /monitorcenter-assembly.tar.gz \
    && rm -rf /monitorcenter-assembly.tar.gz \
    && mv monitorcenter /monitorcenter

EXPOSE 9998 9999

VOLUME ["/monitorcenter/conf", 
        "/monitorcenter/logs"]  

WORKDIR /monitorcenter
ENTRYPOINT ["bin/server.sh", "start"]


