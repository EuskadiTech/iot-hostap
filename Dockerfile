FROM alpine:3

#MAINTAINER Sergio R. <sdelrio@users.noreply.github.com>

ENV VERSION=0.31

RUN apk update \
	&& apk add \
		bash \
		hostapd \
		# optional: \
		net-tools \
		wireless-tools \
	&& rm -rf /var/cache/apk/*

ADD wlanstart.sh /bin/wlanstart.sh

ENTRYPOINT [ "/bin/wlanstart.sh" ]

