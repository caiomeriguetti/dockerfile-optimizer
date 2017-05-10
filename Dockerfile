FROM ubuntu:16.04

RUN echo a
RUN echo b
RUN echo c
RUN echo d


ADD etc etc/test

RUN echo x
RUN echo y
RUN echo z


ENTRYPOINT /bin/bash
