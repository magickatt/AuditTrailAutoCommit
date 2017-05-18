#!/bin/sh

RELEASE=$1
YAML_KEY="backend_version"
CONFIGURATION_FILE="configuration.yml"

# Replace configuration value in yaml file
sed -i '' "s/\($YAML_KEY *: *\).*/\1$RELEASE/" $CONFIGURATION_FILE

COMMIT_MESSAGE="Released ${RELEASE} of Project to Client by User"
echo $COMMIT_MESSAGE
