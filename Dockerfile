FROM ubuntu:18.04
#FROM alpine:3.10

RUN ls
COPY Test/testsc.sh /entrypoint.sh
RUN ls
COPY scripts/Build.sh /entrypoint.sh

#CMD chmod 777 entrypoint.sh
RUN chmod 777 entrypoint.sh
RUN ./entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

RUN /bin/bash -c 'echo "UTC" > /etc/timezone && \
    dpkg-reconfigure -f noninteractive tzdata && \
    sed -i -e "s/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/" /etc/locale.gen && \
    echo "LANG='en_US.UTF-8'">/etc/default/locale && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=en_US.UTF-8'
ENV LANG=en_US.UTF-8

# 
