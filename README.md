# Prometheus node exporter

Prometheus node exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~22.5MB)

Security scanning using Clair
```
clair-scanner secureimages/node-exporter:0.18.1-alpine-3.11.6
2020/04/25 17:27:46 [INFO] ▶ Start clair-scanner
2020/04/25 17:27:46 [INFO] ▶ Server listening on port 9279
2020/04/25 17:27:46 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/04/25 17:27:46 [INFO] ▶ Analyzing a58b22b87600bc3beff89ab2de41bd4c92ad9bc0ad93adb729f27b1e8239a98f
2020/04/25 17:27:46 [INFO] ▶ Image [secureimages/node-exporter:0.18.1-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/node-exporter:0.18.1-alpine-3.11.6
2020-04-25T14:27:52.389Z        INFO    Need to update DB
2020-04-25T14:27:52.389Z        INFO    Downloading DB...
2020-04-25T14:27:57.634Z        INFO    Detecting Alpine vulnerabilities...

secureimages/node-exporter:0.18.1-alpine-3.11.6 (alpine 3.11.6)
===============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~22.9MB)

[https://hub.docker.com/r/prom/node-exporter](https://hub.docker.com/r/prom/node-exporter)
```
docker pull prom/node-exporter:v0.18.1
```

Security scanning using Clair
```
clair-scanner prom/node-exporter:v0.18.1
2020/04/25 17:28:02 [INFO] ▶ Start clair-scanner
2020/04/25 17:28:03 [INFO] ▶ Server listening on port 9279
2020/04/25 17:28:03 [INFO] ▶ Analyzing 2c60b6358b978acc2fe08e020c964c7d35ced75205022acc55824e5b75991164
2020/04/25 17:28:03 [INFO] ▶ Analyzing ba82b105cc1b178d106a917f07c2b45a1985943c64bdbcb57984d117a6b3da70
2020/04/25 17:28:03 [INFO] ▶ Analyzing cbfde1575269840c9750c7ab51d53d4b2be76894ae315f4847ef74a5a806b82c
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress prom/node-exporter:v0.18.1
2020-04-25T14:28:10.301Z        INFO    Need to update DB
2020-04-25T14:28:10.301Z        INFO    Downloading DB...
2020-04-25T14:28:14.973Z        FATAL   error in image scan: scan failed: failed to apply layers: unknown OS
```
