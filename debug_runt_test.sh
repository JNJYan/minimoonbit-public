#!/bin/bash
set -ex

test_files=$(find test -name "*.mbt")

# parsing
for file in $test_files
do
    moon run src/bin/main.mbt -- --end-stage parse $file
done