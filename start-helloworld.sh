#!/bin/sh

FLASK_APP=helloworld.py python -m flask run --port 5001 &
envoy -c service-envoy-1.yaml --base-id 0 --service-cluster service-envoy-1 &
FLASK_APP=helloworld.py python -m flask run --port 5002 &
envoy -c service-envoy-2.yaml --base-id 1 --service-cluster service-envoy-2 &
envoy -c front-envoy.yaml --base-id 2 --service-cluster front-envoy
