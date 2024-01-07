#!/bin/bash

# Run 'micromamba info --json' to get environment info in JSON format
micromamba_info=$(micromamba info --json)

# Parse the environment path from the JSON output
micromamba_env=$(echo "$micromamba_info" | jq -r '.["env location"]')

if [ -n "$micromamba_env" ]; then
    export MAMBA_ENV="$micromamba_env";
    echo "MAMBA_ENV set to $MAMBA_ENV"
else
    echo "Failed to retrieve MicroMamba environment path."
fi
