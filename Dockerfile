FROM alpine:3.10

RUN ls
COPY Test/testsc.sh /entrypoint.sh
RUN ls
COPY script/build.sh /entrypoint.sh

#CMD chmod 777 entrypoint.sh
RUN chmod 777 entrypoint.sh
RUN ./entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
