#!/usr/bin/env bash
set -euxo pipefail


releases=(
0.31.0
0.30.7
0.30.6
0.30.0-canary.11
0.30.0-canary.10
0.30.0-canary.9
0.30.0-canary.8
0.30.0-canary.7
0.30.0-canary.6
0.30.0-canary.5
0.30.0-canary.4
0.30.0-canary.3
0.30.0-canary.2
0.30.0-canary.1
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
