#!/usr/bin/env bash
cd /home/container

# Expand {{VAR}} to ${VAR}
MODIFIED_STARTUP=$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g')

# Run the server
exec $MODIFIED_STARTUP
