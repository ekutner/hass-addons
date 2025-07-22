#!/bin/sh

echo "Starting to load container"

# Path to your JSON configuration file
JSON_FILE="$CONFIG_PATH" 

# Check if jq is installed
if ! command -v jq >/dev/null 2>&1; then
    echo "Error: 'jq' is not installed. Please install it to parse JSON." >&2
    exit 1
fi

# Check if the JSON file exists
if [ ! -f "$JSON_FILE" ]; then
    echo "Error: JSON file not found at '$JSON_FILE'." >&2
    exit 1
fi

echo "Loading environment variables from $JSON_FILE..."

TEMP_ENV_FILE="/tmp/temp_env_$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 10)" # A simple pseudo-random name

# Generate the export commands and write them to the temporary file
jq -r 'to_entries[] | "export \(.key)=\"\(.value)\""' "$JSON_FILE" > "$TEMP_ENV_FILE"

# Source the temporary file to load variables into the current shell
. "$TEMP_ENV_FILE"

# Clean up the temporary file
rm -f "$TEMP_ENV_FILE"


echo "Environment variables loaded."

/app/octoeverywhere-env/bin/python -m docker_octoeverywhere