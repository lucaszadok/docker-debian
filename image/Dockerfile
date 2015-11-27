FROM debian:jessie

ADD ./config /config_build

RUN /config_build/prepare.sh && \
	/config_build/installnode.sh
