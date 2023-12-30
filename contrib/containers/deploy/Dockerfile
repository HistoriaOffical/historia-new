FROM phusion/baseimage:focal-1.0.0
LABEL maintainer="Historia Developers <info@historia.network>"
LABEL description="Dockerised HistoriaCore, built from Travis"

ARG USER_ID
ARG GROUP_ID

ENV HOME /home/historia

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}
RUN groupadd -g ${GROUP_ID} historia && \
    useradd -u ${USER_ID} -g historia -s /bin/bash -m -d /home/historia historia && \
    mkdir /home/historia/.historiacore && \
    chown ${USER_ID}:${GROUP_ID} -R /home/historia

COPY bin/* /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

USER historia

VOLUME ["/home/historia"]

EXPOSE 35776 35777 10100 10101

WORKDIR /home/historia
