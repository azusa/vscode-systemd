FROM ubuntu:24.04

RUN apt-get update \
&& apt-get install -y init systemd

RUN deluser ubuntu

RUN adduser --uid 1000 vscode
RUN apt-get update -y
RUN apt-get install -y  git sudo
RUN echo 'vscode ALL=(ALL:ALL) NOPASSWD: ALL' >> /etc/sudoers


