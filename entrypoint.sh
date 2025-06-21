#!/bin/bash
cd /home/container

# Replace variables like {{SERVER_JARFILE}} if needed
MODIFIED_STARTUP=$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g')

# Run the server
eval ${MODIFIED_STARTUP}
