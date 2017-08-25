# envoy-lightstep-example

Creates and runs minimal docker example using envoy with the LightStep tracer
enabled. The example follows the [Service to service plus fron
proxy](https://lyft.github.io/envoy/docs/intro/deployment_types/front_proxy.html)
deployment pattern where a front envoy edge proxy load balances an envoy
cluster servicing python flask web servers. Usage:
```
export LIGHTSTEP_ACCESS_TOKEN=<AccessToken>
./run.sh
<go to http://localhost:8080>
```
