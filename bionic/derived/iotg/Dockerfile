FROM vicamo/yocto:bionic

RUN apt-get update -qq \
	&& apt-get install --no-install-recommends -y \
		bmap-tools \
		build-essential \
		diffstat \
		elfutils \
		git-lfs \
		libelf-dev \
		libsdl1.2-dev \
		patchutils \
		repo \
		socat \
		wget \
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*
