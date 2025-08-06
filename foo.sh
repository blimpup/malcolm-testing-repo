#! /usr/bin/env sh

curl --request POST \
           --header "PRIVATE-TOKEN: $CI_JOB_TOKEN" \
           --header "Content-Type: application/json" \
           --data '{
             "title": "Pipeline Issue",
             "description": "Issue created from pipeline"
           }' \
           "$CI_API_V4_URL/projects/$CI_PROJECT_ID/issues"
