# Hicn Http Proxy running in a container

This docker runs the hiperf application and the whole hicn stack, built on top of the hicn-plugin for VPP.

## Quick start

For running the application:

```bash
docker run -e PREFIX=c001::/64 -d --name vhiperf-server icnteam/vhiperf-server
```

For a quick overview of the hiperf capabilities check [here](https://github.com/FDio/hicn/tree/master/utils#hiperf "Hiperf")!
