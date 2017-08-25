#!/bin/sh
if [ -z $LIGHTSTEP_ACCESS_TOKEN ]
then
  echo "LIGHT_STEP_ACCESS_TOKEN must be set"
  exit -1
fi
echo $LIGHTSTEP_ACCESS_TOKEN > access_token
docker build -t envoyhello .
docker run -d -p 8080:8080 envoyhello
