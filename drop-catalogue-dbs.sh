#!/bin/bash

repositories=("teams-and-repositories" "releases" "service-configs" "service-dependencies" "shutter-api" "vulnerabilities")

for repo in ${repositories[@]}; do
  mongo $repo --eval "db.dropDatabase()"
done
