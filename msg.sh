#!/bin/bash
while true
do
    az storage message put -q msg --content $(date | base64) --account-name $AZURE_STORAGE_NAME
done
