#!/usr/bin/env bash

# This script adds escapes to ascii sequences to play friendly with MDP

echo $1

sed -i '' 's/\\/\\\\/g' $(pwd)/$1
sed -i '' 's/_/\\_/g' $(pwd)/$1
sed -i '' 's/`/\\`/g' $(pwd)/$1
sed -i '' 's/*/\\*/g' $(pwd)/$1
sed -i '' 's/~/\\~/g' $(pwd)/$1
sed -i '' 's/^---/\---/g' $(pwd)/$1

