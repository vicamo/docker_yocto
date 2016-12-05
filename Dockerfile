FROM buildpack-deps

MAINTAINER vicamo@gmail.com

RUN apt-get update -qq \
	&& apt-get install --no-install-recommends -y --force-yes \
		ccache \
		chrpath \
		cpio \
		diffstat \
		gawk \
		texinfo \
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*
