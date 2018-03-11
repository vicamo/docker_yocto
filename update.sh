#!/bin/bash

set -eo pipefail
cd "$(dirname "$(readlink -f "$BASH_SOURCE")")"

suites=( "$@" )
if [ ${#suites[@]} -eq 0 ]; then
  suites=( */ )
fi
suites=( "${suites[@]%/}" )

travisEnv=
for suite in $(for s in "${suites[@]}"; do echo $s; done | sort -r); do
  travisEnv='\n  - SUITE='"$suite$travisEnv";
  [ -n "$(head -n1 $suite/Dockerfile | grep GENERATED)" ] || continue;

  cat Dockerfile.template | \
    sed -e "s,@SUITE@,$suite,g" \
      > $suite/Dockerfile;
done

travis="$(awk -v 'RS=\n\n' '($1 == "env:") { $0 = substr($0, 0, index($0, "matrix:") + length("matrix:") - 1)"'"$travisEnv"'" } { printf "%s%s", $0, RS }' .travis.yml)"
echo "$travis" > .travis.yml
