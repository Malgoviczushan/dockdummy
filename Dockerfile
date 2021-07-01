FROM alpine:3.10
WORKDIR /home 
RUN ls
COPY Test/testsc.sh /entrypoint.sh
RUN ls
COPY scripts/Build.sh /entrypoint.sh

#CMD chmod 777 entrypoint.sh
RUN chmod 777 entrypoint.sh
RUN ./entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
