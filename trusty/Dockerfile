FROM buildpack-deps:trusty

MAINTAINER vicamo@gmail.com

RUN apt-get update -qq \
	&& apt-get install --no-install-recommends -y \
		ccache \
		chrpath \
		cpio \
		diffstat \
		gawk \
		locales \
		python3 \
		texinfo \
	&& sed -i -e 's,^# en_US,en_US,' /etc/locale.gen \
	&& locale-gen \
	&& update-locale LANG=en_US.UTF-8 LANGUAGE \
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*
