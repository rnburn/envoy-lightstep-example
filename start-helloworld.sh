#!/bin/sh

FLASK_APP=helloworld.py python -m flask run --port 5001 &
envoy -c service-envoy-1.json --base-id 0 --service-cluster service-envoy-1 &
FLASK_APP=helloworld.py python -m flask run --port 5002 &
envoy -c service-envoy-2.json --base-id 1 --service-cluster service-envoy-2 &
envoy -c front-envoy.json --base-id 2 --service-cluster front-envoy
