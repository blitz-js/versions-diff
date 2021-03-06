#!/usr/bin/env bash
set -euxo pipefail


releases=(
0.28.0
0.28.0-canary.2
0.28.0-canary.1
0.28.0-canary.0
0.27.1
0.27.0
0.27.0-canary.3
0.27.0-canary.2
0.27.0-canary.1
0.27.0-canary.0
0.26.2
0.26.1
0.26.0
0.25.1-canary.3
0.25.1-canary.2
0.25.1-canary.1
0.25.1-canary.0
0.25.0
0.25.0-canary.6
0.25.0-canary.5
0.25.0-canary.4
0.25.0-canary.3
0.25.0-canary.2
0.25.0-canary.1
0.25.0-canary.0
0.24.3
0.24.2
0.24.1
0.24.0
0.24.0-canary.4
0.24.0-canary.3
0.24.0-canary.2
0.24.0-canary.1
0.24.0-canary.0
0.23.4
)

for v in "${releases[@]}"
do
    echo $v
    ./new-release.sh $v
done
