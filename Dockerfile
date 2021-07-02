FROM ubuntu:18.04
#FROM alpine:3.10

RUN ls
COPY Test/testsc.sh /entrypoint.sh
COPY README.MD 
RUN ls
COPY scripts/Build.sh /entrypoint.sh

#CMD chmod 777 entrypoint.sh
RUN chmod 777 entrypoint.sh
RUN ./entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
