FROM alpine:3.10

COPY Test/testsc.sh /entrypoint.sh

CMD chmod 777 entrypoint.sh

RUN ./entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
