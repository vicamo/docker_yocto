FROM buildpack-deps

MAINTAINER vicamo@gmail.com

RUN apt-get update -qq \
	&& apt-get install --no-install-recommends -y --force-yes \
		chrpath \
		cpio \
		diffstat \
		texinfo \
		gawk \
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*
