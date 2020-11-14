# Prometheus node exporter

Prometheus node exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~25.2MB)

Security scanning using Clair
```
clair-scanner secureimages/node-exporter:1.0.1-alpine-3.12.1
2020/11/14 16:17:43 [INFO] ▶ Start clair-scanner
2020/11/14 16:17:44 [INFO] ▶ Server listening on port 9279
2020/11/14 16:17:44 [INFO] ▶ Analyzing ff72598b05f57e6f83d56b858ba9783796e99aea2dcef391b3fa688c1e077ae5
2020/11/14 16:17:44 [INFO] ▶ Analyzing c622a65db40cde5febee52381bbdd0cf7ddac0bb7b413161900a44ac22d148b8
2020/11/14 16:17:44 [INFO] ▶ Image [secureimages/node-exporter:1.0.1-alpine-3.12.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress secureimages/node-exporter:1.0.1-alpine-3.12.1
2020-11-14T16:17:49.713Z        INFO    Need to update DB
2020-11-14T16:17:49.713Z        INFO    Downloading DB...
2020-11-14T16:17:54.933Z        INFO    Detecting Alpine vulnerabilities...

secureimages/node-exporter:1.0.1-alpine-3.12.1 (alpine 3.12.1)
==============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~26.4MB)

[https://hub.docker.com/r/prom/node-exporter](https://hub.docker.com/r/prom/node-exporter)
```
docker pull prom/node-exporter:v1.0.1
```

Security scanning using Clair
```
clair-scanner prom/node-exporter:v1.0.1
2020/11/14 16:17:59 [INFO] ▶ Start clair-scanner
2020/11/14 16:17:59 [INFO] ▶ Server listening on port 9279
2020/11/14 16:17:59 [INFO] ▶ Analyzing 04106bf59785d26ccb59b69d3d4b5b254e32d0bc9c2cc2903125999d72e559b8
2020/11/14 16:17:59 [INFO] ▶ Analyzing 5503dd10d07baef7c42c9565b227c1500336ae00103dccf1d1820cab61c2eedb
2020/11/14 16:17:59 [INFO] ▶ Analyzing c720068c37a615cc09cb7b327f30ac6b94e468bb8553a18732e5c50644e7ab00
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress prom/node-exporter:v1.0.1
2020-11-14T16:18:07.301Z        INFO    Need to update DB
2020-11-14T16:18:07.301Z        INFO    Downloading DB...
2020-11-14T16:18:11.556Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
```
