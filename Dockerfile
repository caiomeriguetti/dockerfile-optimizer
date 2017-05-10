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
ADD xx yy

RUN echo 10
RUN echo 11
RUN echo 12
RUN echo 13
RUN echo 14
RUN echo 15

RUN echo 10 && echo 11 && echo 12

RUN echo 111 && echo 222

ENTRYPOINT /bin/bash
