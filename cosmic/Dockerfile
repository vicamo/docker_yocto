# GENERATED FROM DOCKERFILE.TEMPLATE. DO NOT EDIT.

FROM buildpack-deps:cosmic

MAINTAINER vicamo@gmail.com

RUN apt-get update -qq \
	&& apt-get install --no-install-recommends -y \
		ccache \
		chrpath \
		cpio \
		diffstat \
		gawk \
		iptables \
		locales \
		python3 \
		sudo \
		texinfo \
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*

RUN sed -i -e 's,^# en_US,en_US,' /etc/locale.gen \
	&& locale-gen \
	&& update-locale LANG=en_US.UTF-8 LANGUAGE

ENV LANG=en_US.UTF-8
