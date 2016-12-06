FROM buildpack-deps:trusty

MAINTAINER vicamo@gmail.com

ENV YOCTO_USER=yocto
ENV YOCTO_HOME=/home/${YOCTO_USER}

RUN apt-get update -qq \
	&& apt-get install --no-install-recommends -y \
		ccache \
		chrpath \
		cpio \
		diffstat \
		gawk \
		locales \
		python3 \
		sudo \
		texinfo \
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*

RUN (echo "en_US.UTF-8 UTF-8"; \
		echo "en_US ISO-8859-1"; \
		echo "en_US.ISO-8859-15 ISO-8859-15") >/var/lib/locales/supported.d/bitbake.conf \
	&& locale-gen \
	&& update-locale LANG=en_US.UTF-8 LANGUAGE

RUN useradd --comment 'Yocto Development Account' \
		--home ${YOCTO_HOME} --create-home \
		--shell /bin/bash \
		${YOCTO_USER} \
	&& (echo "${YOCTO_USER}:${YOCTO_USER}" | chpasswd) \
	&& adduser ${YOCTO_USER} sudo \
	&& (echo "${YOCTO_USER} ALL=NOPASSWD: ALL" > /etc/sudoers.d/${YOCTO_USER}) \
	&& chmod 0440 /etc/sudoers.d/${YOCTO_USER}

VOLUME ["${YOCTO_HOME}"]
WORKDIR ${YOCTO_HOME}
USER ${YOCTO_USER}
