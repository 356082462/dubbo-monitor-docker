FROM java:7
MAINTAINER zetas

ADD ./monitorcenter-assembly.tar.gz /

EXPOSE 9998 9999

VOLUME ["/monitorcenter/conf", 
        "/monitorcenter/logs"]  

WORKDIR /monitorcenter
ENTRYPOINT ["bin/server.sh", "start"]


