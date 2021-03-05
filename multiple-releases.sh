#!/usr/bin/env bash
set -euxo pipefail


releases=(
0.30.2      
0.30.1      
0.30.0      
0.30.0-canary.15      
0.30.0-canary.14      
0.30.0-canary.13      
0.30.0-canary.12
)

for v in "${releases[@]}"
do
    echo $v
    ./expect-new-release.sh $v
done
