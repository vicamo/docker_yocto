FROM buildpack-deps:trusty

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
		$(which realpath >/dev/null 2>&1 || echo realpath) \
		sudo \
		texinfo \
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*

RUN (echo "en_US.UTF-8 UTF-8"; \
		echo "en_US ISO-8859-1"; \
		echo "en_US.ISO-8859-15 ISO-8859-15") >/var/lib/locales/supported.d/bitbake.conf \
	&& locale-gen \
	&& update-locale LANG=en_US.UTF-8 LANGUAGE

ENV LANG=en_US.UTF-8
