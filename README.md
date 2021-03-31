# Prometheus node exporter

Prometheus node exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~24.8MB)

Security scanning using Clair
```
clair-scanner secureimages/node-exporter:1.1.2-alpine-3.13.3
2021/03/31 08:51:36 [INFO] ▶ Start clair-scanner
2021/03/31 08:51:36 [INFO] ▶ Server listening on port 9279
2021/03/31 08:51:36 [INFO] ▶ Analyzing 7d89ae2c30338875fa3a10be99c984f80dac89b1527ef8115ca77d7fd8eeef92
2021/03/31 08:51:36 [INFO] ▶ Analyzing 8c9b7ddb23c7ccea4ef44f6b57082158ffe510a86e5e96a01e12297687eb7972
2021/03/31 08:51:36 [WARN] ▶ Image [secureimages/node-exporter:1.1.2-alpine-3.13.3] contains 2 total vulnerabilities
2021/03/31 08:51:36 [ERRO] ▶ Image [secureimages/node-exporter:1.1.2-alpine-3.13.3] contains 2 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/node-exporter:1.1.2-alpine-3.13.3
2021-03-31T08:51:44.535Z        INFO    Need to update DB
2021-03-31T08:51:44.535Z        INFO    Downloading DB...
2021-03-31T08:51:47.488Z        INFO    Detecting Alpine vulnerabilities...
2021-03-31T08:51:47.489Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/node-exporter:1.1.2-alpine-3.13.3 (alpine 3.13.3)
==============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~26MB)

[https://hub.docker.com/r/prom/node-exporter](https://hub.docker.com/r/prom/node-exporter)
```
docker pull prom/node-exporter:v1.1.2
```

Security scanning using Clair
```
clair-scanner prom/node-exporter:v1.1.2
2021/03/31 08:51:55 [INFO] ▶ Start clair-scanner
2021/03/31 08:51:55 [INFO] ▶ Server listening on port 9279
2021/03/31 08:51:55 [INFO] ▶ Analyzing 5bb40584ed3ac0415fd66dcd3b7787aaba0e9f1e7c32fe7ca43cc6c278707efc
2021/03/31 08:51:55 [INFO] ▶ Analyzing f6ca65812b208b446db59376f6417ce4b990453832b0f996c33f10084759da6f
2021/03/31 08:51:55 [INFO] ▶ Analyzing af1bcb5086c83a888382ece38dd583f8a7ed4d9c2baab9d8d9d59eeee6b04042
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress prom/node-exporter:v1.1.2
2021-03-31T08:52:00.648Z        INFO    Need to update DB
2021-03-31T08:52:00.648Z        INFO    Downloading DB...
2021-03-31T08:52:03.914Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
2021-03-31T08:52:03.914Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
```
