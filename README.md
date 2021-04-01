# Prometheus node exporter

Prometheus node exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~24.8MB)

Security scanning using Clair
```
clair-scanner secureimages/node-exporter:1.1.2-alpine-3.13.4
2021/04/01 12:29:27 [INFO] ▶ Start clair-scanner
2021/04/01 12:29:27 [INFO] ▶ Server listening on port 9279
2021/04/01 12:29:27 [INFO] ▶ Analyzing e46e108285519ee26fa254dfaab29d7d350c0c321daa1350567c5202109138ca
2021/04/01 12:29:27 [INFO] ▶ Analyzing 696e3218fea5f61ba1746c75c2d4f60520c5f31a1f6dfe229ecf931fd51f0128
2021/04/01 12:29:27 [WARN] ▶ Image [secureimages/node-exporter:1.1.2-alpine-3.13.4] contains 1 total vulnerabilities
2021/04/01 12:29:27 [ERRO] ▶ Image [secureimages/node-exporter:1.1.2-alpine-3.13.4] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/node-exporter:1.1.2-alpine-3.13.4
2021-04-01T12:29:33.124Z        INFO    Need to update DB
2021-04-01T12:29:33.124Z        INFO    Downloading DB...
2021-04-01T12:29:36.155Z        INFO    Detecting Alpine vulnerabilities...
2021-04-01T12:29:36.155Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/node-exporter:1.1.2-alpine-3.13.4 (alpine 3.13.4)
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
2021/04/01 12:29:41 [INFO] ▶ Start clair-scanner
2021/04/01 12:29:42 [INFO] ▶ Server listening on port 9279
2021/04/01 12:29:42 [INFO] ▶ Analyzing 5bb40584ed3ac0415fd66dcd3b7787aaba0e9f1e7c32fe7ca43cc6c278707efc
2021/04/01 12:29:42 [INFO] ▶ Analyzing f6ca65812b208b446db59376f6417ce4b990453832b0f996c33f10084759da6f
2021/04/01 12:29:42 [INFO] ▶ Analyzing af1bcb5086c83a888382ece38dd583f8a7ed4d9c2baab9d8d9d59eeee6b04042
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress prom/node-exporter:v1.1.2
2021-04-01T12:29:47.788Z        INFO    Need to update DB
2021-04-01T12:29:47.788Z        INFO    Downloading DB...
2021-04-01T12:29:50.931Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
2021-04-01T12:29:50.931Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
```
