#!/bin/bash
cd /home/container

# Replace {{VARIABLE}} with ${VARIABLE}
MODIFIED_STARTUP=$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g')

# Run the modified startup command
eval ${MODIFIED_STARTUP}
