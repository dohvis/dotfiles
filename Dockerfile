FROM ubuntu:16.04
MAINTAINER nerogit <nero.union12@gmail.com>

RUN apt-get update
RUN apt-get install -y software-properties-common vim

EXPOSE 80
