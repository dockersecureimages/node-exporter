# Prometheus node exporter

Prometheus node exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~24.8MB)

Security scanning using Clair
```
clair-scanner secureimages/node-exporter:1.1.1-alpine-3.13.2
2021/02/20 11:00:29 [INFO] ▶ Start clair-scanner
2021/02/20 11:00:29 [INFO] ▶ Server listening on port 9279
2021/02/20 11:00:29 [INFO] ▶ Analyzing b73bac2fe5a7b9d1abcbf0138798281e20b11e59b4605b104d38e914fa35b4d2
2021/02/20 11:00:29 [INFO] ▶ Analyzing 0fba02a171c9aa6418e9d978da8011c1c1da36abc83eb34e679ab4036408c5cb
2021/02/20 11:00:29 [WARN] ▶ Image [secureimages/node-exporter:1.1.1-alpine-3.13.2] contains 1 total vulnerabilities
2021/02/20 11:00:29 [ERRO] ▶ Image [secureimages/node-exporter:1.1.1-alpine-3.13.2] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/node-exporter:1.1.1-alpine-3.13.2
2021-02-20T11:00:34.562Z        INFO    Need to update DB
2021-02-20T11:00:34.562Z        INFO    Downloading DB...
2021-02-20T11:00:37.392Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T11:00:37.393Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/node-exporter:1.1.1-alpine-3.13.2 (alpine 3.13.2)
==============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~26MB)

[https://hub.docker.com/r/prom/node-exporter](https://hub.docker.com/r/prom/node-exporter)
```
docker pull prom/node-exporter:v1.1.1
```

Security scanning using Clair
```
clair-scanner prom/node-exporter:v1.1.1
2021/02/20 11:00:46 [INFO] ▶ Start clair-scanner
2021/02/20 11:00:47 [INFO] ▶ Server listening on port 9279
2021/02/20 11:00:47 [INFO] ▶ Analyzing 5bb40584ed3ac0415fd66dcd3b7787aaba0e9f1e7c32fe7ca43cc6c278707efc
2021/02/20 11:00:47 [INFO] ▶ Analyzing f6ca65812b208b446db59376f6417ce4b990453832b0f996c33f10084759da6f
2021/02/20 11:00:47 [INFO] ▶ Analyzing 6288429be43c190fae97e599b625eb1be3cef582adc65d8759da914440b98ecb
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress prom/node-exporter:v1.1.1
2021-02-20T11:00:52.801Z        INFO    Need to update DB
2021-02-20T11:00:52.801Z        INFO    Downloading DB...
2021-02-20T11:00:55.941Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
2021-02-20T11:00:55.941Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
```
