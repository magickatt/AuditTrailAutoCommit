#!/bin/sh

RELEASE=$1
YAML_KEY="backend_version"
CONFIGURATION_FILE="configuration.yml"
COMMIT_MESSAGE="Released ${RELEASE} of Project to Client by User"

# Replace configuration value in yaml file
sed -i '' "s/\($YAML_KEY *: *\).*/\1$RELEASE/" $CONFIGURATION_FILE

# Commit the updated configuration yaml file
GIT_ADD="git add ${CONFIGURATION_FILE}"
GIT_COMMIT="git commit -m \"${COMMIT_MESSAGE}\""
GIT_PUSH="git push"

COMMIT_TO_GIT=true

echo $GIT_ADD
echo $GIT_COMMIT
echo $GIT_PUSH

if $COMMIT_TO_GIT; then 
	eval $GIT_ADD
	eval $GIT_COMMIT 
	eval $GIT_PUSH 
fi
