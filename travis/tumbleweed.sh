#!/bin/sh
# Copyright (c) 2020 Petr Vorel <pvorel@suse.cz>
set -ex

if [ -z "$CC" ]; then
	echo "missing \$CC!" >&2
	exit 1
fi

# clang has some gcc dependency
[ "$CC" = "gcc" ] || CC="gcc $CC"

zypper --non-interactive install --force-resolution --no-recommends \
	$CC attr \
	autoconf \
	automake \
	diffutils \
	gzip \
	libattr-devel \
	libopenssl-devel \
	libtool \
	make \
	openssl \
	sudo \
	wget \
	which
