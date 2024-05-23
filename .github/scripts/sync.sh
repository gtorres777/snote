#!/bin/bash
set -e

BRANCH="${GITHUB_REF#refs/heads/}"

if [ "$BRANCH" = "master" ]; then
  status=$(curl -s -w "%{http_code}" -X PATCH $DATABRICKS_WORKSPACE/api/2.0/repos/prodxd -H "Authorization: Bearer $DATABRICKS_TOKEN" -H "Content-Type: application/json" -d '{"branch": "master"}')
else
  status=$(curl -s -w "%{http_code}" -X PATCH $DATABRICKS_WORKSPACE_DEV/api/2.0/repos/751319337702225 -H "Authorization: Bearer $DATABRICKS_TOKEN_DEV" -H "Content-Type: application/json" -d '{"branch": "dev"}')
fi

status_code=$(echo "$status" | grep -oE '[0-9]{3}$')

if [ $status_code == "200" ]; then
    echo "Job Succesful response was "$status_code
else
    echo "Job Failed Response was "$status_code
    error_code=$(echo "$status" | head -n 1)
    echo "error_code: $error_code"
    exit 1
fi
