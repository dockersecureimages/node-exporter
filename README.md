# Prometheus node exporter

Prometheus node exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/node-exporter:0.18.1-alpine-3.11.5
2020/03/24 18:21:35 [INFO] ▶ Start clair-scanner
2020/03/24 18:21:35 [INFO] ▶ Server listening on port 9279
2020/03/24 18:21:35 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/24 18:21:35 [INFO] ▶ Analyzing b069f7bc21cb9623566f1c70d0b649ec53540ef205997d3aed72a489d9f30daa
2020/03/24 18:21:35 [INFO] ▶ Image [secureimages/node-exporter:0.18.1-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/node-exporter:0.18.1-alpine-3.11.5
2020-03-24T16:21:43.445Z        INFO    Need to update DB
2020-03-24T16:21:43.446Z        INFO    Downloading DB...
2020-03-24T16:21:46.982Z        INFO    Reopening DB...
2020-03-24T16:21:47.794Z        INFO    Detecting Alpine vulnerabilities...

secureimages/node-exporter:0.18.1-alpine-3.11.5 (alpine 3.11.5)
===============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/prom/node-exporter](https://hub.docker.com/r/prom/node-exporter)
```
docker pull prom/node-exporter:v0.18.1
```

Security scanning using Clair
```
clair-scanner prom/node-exporter:v0.18.1
2020/03/24 18:21:53 [INFO] ▶ Start clair-scanner
2020/03/24 18:21:54 [INFO] ▶ Server listening on port 9279
2020/03/24 18:21:54 [INFO] ▶ Analyzing 2c60b6358b978acc2fe08e020c964c7d35ced75205022acc55824e5b75991164
2020/03/24 18:21:54 [INFO] ▶ Analyzing ba82b105cc1b178d106a917f07c2b45a1985943c64bdbcb57984d117a6b3da70
2020/03/24 18:21:54 [INFO] ▶ Analyzing cbfde1575269840c9750c7ab51d53d4b2be76894ae315f4847ef74a5a806b82c
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress prom/node-exporter:v0.18.1
2020-03-24T16:22:02.015Z        INFO    Need to update DB
2020-03-24T16:22:02.015Z        INFO    Downloading DB...
2020-03-24T16:22:06.074Z        INFO    Reopening DB...
2020-03-24T16:22:06.631Z        FATAL   error in image scan: scan failed: failed to apply layers: unknown OS
```
