#!/bin/bash

status=$(curl -s -w "%{http_code}" -X PATCH $DATABRICKS_WORKSPACE/api/2.0/repos/658513326252485 -H "Authorization: Bearer $DATABRICKS_TOKEN" -H "Content-Type: application/json" -d '{"branch": "master"}')

status_code=$(echo "$status" | grep -oE '[0-9]{3}$')

if [[ $status_code == "200" ]]; then
    echo "Job Succesful response was "$status_code
else
    echo "Job Failed Response was "$status_code
    error_code=$(echo "$status" | head -n 1)
    echo "error_code: $error_code"
    exit 1
fi
