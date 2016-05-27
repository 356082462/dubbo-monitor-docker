FROM java:7

MAINTAINER zetas

COPY ./monitorcenter-assembly.tar.gz /

RUN cd / \
    && tar -xvzf monitorcenter-assembly.tar.gz \ 
    && rm -rf monitorcenter-assembly.tar.gz

EXPOSE 9998 9999

VOLUME ["/monitorcenter/conf", 
        "/monitorcenter/logs"]  

WORKDIR /monitorcenter

ENTRYPOINT ["bin/server.sh", "start"]


