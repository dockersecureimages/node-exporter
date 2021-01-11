# Prometheus node exporter

Prometheus node exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~25.2MB)

Security scanning using Clair
```
clair-scanner secureimages/node-exporter:1.0.1-alpine-3.12.3
2021/01/11 09:10:03 [INFO] ▶ Start clair-scanner
2021/01/11 09:10:03 [INFO] ▶ Server listening on port 9279
2021/01/11 09:10:03 [INFO] ▶ Analyzing 239a994d90a30d28d70001f62415dabc8636df0ebb561fe4d6c1b4b1d4a6cbcf
2021/01/11 09:10:03 [INFO] ▶ Analyzing 2e5af126645ea86de0bc8e5c2f61af0b597d64c4e3bf4caa29361070376b12ce
2021/01/11 09:10:03 [INFO] ▶ Image [secureimages/node-exporter:1.0.1-alpine-3.12.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.15.0 --no-progress secureimages/node-exporter:1.0.1-alpine-3.12.3
2021-01-11T09:10:10.364Z        INFO    Need to update DB
2021-01-11T09:10:10.364Z        INFO    Downloading DB...
2021-01-11T09:10:15.283Z        INFO    Detecting Alpine vulnerabilities...
2021-01-11T09:10:15.283Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/node-exporter:1.0.1-alpine-3.12.3 (alpine 3.12.3)
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
2021/01/11 09:10:20 [INFO] ▶ Start clair-scanner
2021/01/11 09:10:21 [INFO] ▶ Server listening on port 9279
2021/01/11 09:10:21 [INFO] ▶ Analyzing 04106bf59785d26ccb59b69d3d4b5b254e32d0bc9c2cc2903125999d72e559b8
2021/01/11 09:10:21 [INFO] ▶ Analyzing 5503dd10d07baef7c42c9565b227c1500336ae00103dccf1d1820cab61c2eedb
2021/01/11 09:10:21 [INFO] ▶ Analyzing c720068c37a615cc09cb7b327f30ac6b94e468bb8553a18732e5c50644e7ab00
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.15.0 --no-progress prom/node-exporter:v1.0.1
2021-01-11T09:10:27.674Z        INFO    Need to update DB
2021-01-11T09:10:27.674Z        INFO    Downloading DB...
2021-01-11T09:10:33.134Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
2021-01-11T09:10:33.134Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
```
