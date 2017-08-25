# envoy-lightstep-example

Creates and runs a minimal docker example using envoy with the LightStep tracer
enabled. The example follows the [Service to service plus front
proxy](https://lyft.github.io/envoy/docs/intro/deployment_types/front_proxy.html)
deployment pattern where a front envoy edge proxy load balances to an envoy
cluster servicing python flask web servers.
```
export LIGHTSTEP_ACCESS_TOKEN=<access token>
./run.sh
<go to http://localhost:8080>
```
