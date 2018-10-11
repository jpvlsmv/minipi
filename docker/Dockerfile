FROM debian:stable
LABEL maintainer="Joe Moore <jpvlsmv@gmail.com>"
ENV REPO_LOC=https://github.com/jpvlsmv/minipi


RUN groupadd -r buildroot && useradd --no-log-init -r -g buildroot buildroot
RUN mkdir -p /home/buildroot ; chown -R buildroot:buildroot /home/buildroot
WORKDIR /home/buildroot

# Base
COPY ../requirements-dpkg.txt /home/buildroot/
RUN apt-get update && apt-get install -y $(cat requirements-dpkg.txt)

USER buildroot
RUN env

