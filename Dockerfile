FROM java:7

MAINTAINER zetas

COPY ./monitorcenter-assembly.tar.gz /
COPY ./run.sh /

RUN cd / \
    && tar -xvzf monitorcenter-assembly.tar.gz \ 
    && rm -rf monitorcenter-assembly.tar.gz \
    && cp /run.sh /monitorcenter/run.sh \
    && chmod +x /monitorcenter/run.sh \
    && apt-get update \
    && apt-get install net-tools

EXPOSE 9998 9999

VOLUME ["/monitorcenter/conf"]  

WORKDIR /monitorcenter

ENTRYPOINT ["./run.sh"]


