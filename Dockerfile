FROM buildpack-deps

MAINTAINER vicamo@gmail.com

RUN apt-get update -qq \
	&& apt-get install --no-install-recommends -y \
		ccache \
		chrpath \
		cpio \
		diffstat \
		gawk \
		python3 \
		texinfo \
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*
