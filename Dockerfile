FROM java:7

MAINTAINER zetas

COPY ./monitorcenter-assembly.tar.gz /

RUN cd / \
    && tar -xvzf monitorcenter-assembly.tar.gz \ 
    && rm -rf monitorcenter-assembly.tar.gz \
    && apt-get update \
    && apt-get install net-tools

EXPOSE 9998 9999

VOLUME ["/monitorcenter/conf"]  

WORKDIR /monitorcenter

ENTRYPOINT ["bin/server.sh", "start"]


