FROM ubuntu:16.04

RUN echo a
RUN echo b
RUN echo c
RUN echo d


ADD etc etc/test

RUN echo x
RUN echo y
RUN echo z


ADD xxx yyy

RUN echo aaa \
  && echo bbb \
  && echo ccc

ADD teste t

RUN echo 111 && echo 222

ENTRYPOINT /bin/bash
