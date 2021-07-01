FROM alpine:3.10
RUN dir
RUN ls
COPY Test/testsc.sh /entrypoint.sh
RUN dir
RUN ls

#CMD chmod 777 entrypoint.sh
RUN chmod 777 entrypoint.sh
RUN ./entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
