#!/bin/bash

# Read values from YAML file
version=$(grep '^version:' sushi-config.yaml | awk '{print $2}')
cmd="./_genonce.sh -publish https://fhir.ee/packages/qre/$version/site"

# Show version
echo $cmd

# Execute
$cmd
