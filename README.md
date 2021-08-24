# Prometheus node exporter

Prometheus node exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~24.1MB)

Security scanning using Clair
```
clair-scanner secureimages/node-exporter:1.2.2-alpine-3.14.1
2021/08/24 09:35:25 [INFO] ▶ Start clair-scanner
2021/08/24 09:35:25 [INFO] ▶ Server listening on port 9279
2021/08/24 09:35:25 [INFO] ▶ Analyzing 11cbe68173689fb732863a26e9c9217da15b278edc951dcae1effb426247f521
2021/08/24 09:35:25 [INFO] ▶ Analyzing f431d0ca66b421bc883ea5dd81094902b2bfbd47be0e65f24239f6cad8363ce9
2021/08/24 09:35:25 [WARN] ▶ Image [secureimages/node-exporter:1.2.2-alpine-3.14.1] contains 1 total vulnerabilities
2021/08/24 09:35:25 [ERRO] ▶ Image [secureimages/node-exporter:1.2.2-alpine-3.14.1] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.19.2 --no-progress secureimages/node-exporter:1.2.2-alpine-3.14.1
2021-08-24T09:35:34.233Z        INFO    Need to update DB
2021-08-24T09:35:34.233Z        INFO    Downloading DB...
2021-08-24T09:35:37.020Z        INFO    Detected OS: alpine
2021-08-24T09:35:37.020Z        INFO    Detecting Alpine vulnerabilities...
2021-08-24T09:35:37.021Z        INFO    Number of language-specific files: 1
2021-08-24T09:35:37.021Z        INFO    Detecting gobinary vulnerabilities...

secureimages/node-exporter:1.2.2-alpine-3.14.1 (alpine 3.14.1)
==============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)


bin/node_exporter (gobinary)
============================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~21.2MB)

[https://hub.docker.com/r/prom/node-exporter](https://hub.docker.com/r/prom/node-exporter)
```
docker pull prom/node-exporter:v1.2.2
```

Security scanning using Clair
```
clair-scanner prom/node-exporter:v1.2.2
2021/08/24 09:35:44 [INFO] ▶ Start clair-scanner
2021/08/24 09:35:45 [INFO] ▶ Server listening on port 9279
2021/08/24 09:35:45 [INFO] ▶ Analyzing ccdc8d17c85badb2d49ffd2e13a368677b69bdb27ef6080b968472ad81342ece
2021/08/24 09:35:45 [INFO] ▶ Analyzing 3e11f1a7fb6fffaeac4f8008521afeeb60ef96697a8b9bcb90fe67ee6279ae45
2021/08/24 09:35:45 [INFO] ▶ Analyzing a503ed1301763c390ac902950c0016e101441b24f1ad1deaf68d1fbe93f1b732
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.19.2 --no-progress prom/node-exporter:v1.2.2
2021-08-24T09:35:50.410Z        INFO    Need to update DB
2021-08-24T09:35:50.410Z        INFO    Downloading DB...
2021-08-24T09:35:54.422Z        INFO    Number of language-specific files: 1
2021-08-24T09:35:54.422Z        INFO    Detecting gobinary vulnerabilities...

bin/node_exporter (gobinary)
============================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
