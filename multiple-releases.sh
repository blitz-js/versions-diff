#!/usr/bin/env bash
set -euxo pipefail


releases=(
0.28.0
0.28.0-canary.2
0.28.0-canary.1
0.28.0-canary.0
0.27.1
)

for v in "${releases[@]}"
do
    echo $v
    ./new-release.sh $v
done
