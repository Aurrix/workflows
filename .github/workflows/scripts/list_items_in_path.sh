#!/bin/bash

set -euo pipefail

result=''

cd $1

for step in ./*; do
if [ -n "$result" ]; then
result="$result,"
fi
result="$result\"$step\""
done

echo "$result"