#!/usr/bin/env bash
set -euxo pipefail


releases=(
0.29.7
0.29.6
0.29.5
0.29.4
v0.29.3
v0.29.2
v0.29.1
v0.29.0
v0.29.0-canary.0
v0.28.0
v0.28.0-canary.2
v0.28.0-canary.1
v0.28.0-canary.0
v0.27.1
)

for v in "${releases[@]}"
do
    echo $v
    ./new-release.sh $v
done
