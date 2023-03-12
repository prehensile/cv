FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update

RUN apt install make

COPY Makefile /

RUN sed -i 's/sudo //g' ./Makefile 

RUN make dependencies

CMD cd home && make pdf