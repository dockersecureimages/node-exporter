# Prometheus node exporter

Prometheus node exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~24.8MB)

Security scanning using Clair
```
clair-scanner secureimages/node-exporter:1.1.2-alpine-3.13.5
2021/04/16 08:14:29 [INFO] ▶ Start clair-scanner
2021/04/16 08:14:29 [INFO] ▶ Server listening on port 9279
2021/04/16 08:14:29 [INFO] ▶ Analyzing d09376239d873ace0c02b1b53834f0fe3167a652a8fc436465db0171eb639b61
2021/04/16 08:14:29 [INFO] ▶ Analyzing 5c3193371e0d34428ab6122be7020432a01d7a1de4dd1aac59357a421f48b6a5
2021/04/16 08:14:29 [WARN] ▶ Image [secureimages/node-exporter:1.1.2-alpine-3.13.5] contains 1 total vulnerabilities
2021/04/16 08:14:29 [ERRO] ▶ Image [secureimages/node-exporter:1.1.2-alpine-3.13.5] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/node-exporter:1.1.2-alpine-3.13.5
2021-04-16T08:14:38.534Z        INFO    Need to update DB
2021-04-16T08:14:38.534Z        INFO    Downloading DB...
2021-04-16T08:14:53.906Z        INFO    Detecting Alpine vulnerabilities...
2021-04-16T08:14:53.906Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/node-exporter:1.1.2-alpine-3.13.5 (alpine 3.13.5)
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
2021/04/16 08:15:01 [INFO] ▶ Start clair-scanner
2021/04/16 08:15:01 [INFO] ▶ Server listening on port 9279
2021/04/16 08:15:01 [INFO] ▶ Analyzing 5bb40584ed3ac0415fd66dcd3b7787aaba0e9f1e7c32fe7ca43cc6c278707efc
2021/04/16 08:15:01 [INFO] ▶ Analyzing f6ca65812b208b446db59376f6417ce4b990453832b0f996c33f10084759da6f
2021/04/16 08:15:02 [INFO] ▶ Analyzing af1bcb5086c83a888382ece38dd583f8a7ed4d9c2baab9d8d9d59eeee6b04042
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress prom/node-exporter:v1.1.2
2021-04-16T08:15:10.050Z        INFO    Need to update DB
2021-04-16T08:15:10.050Z        INFO    Downloading DB...
2021-04-16T08:15:12.830Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
2021-04-16T08:15:12.830Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
```
