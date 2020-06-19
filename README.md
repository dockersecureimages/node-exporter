# Prometheus node exporter

Prometheus node exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~25.2MB)

Security scanning using Clair
```
clair-scanner secureimages/node-exporter:1.0.1-alpine-3.12.0
2020/06/19 18:27:44 [INFO] ▶ Start clair-scanner
2020/06/19 18:27:44 [INFO] ▶ Server listening on port 9279
2020/06/19 18:27:44 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/19 18:27:44 [INFO] ▶ Analyzing 09436767ccd20d6afd8492bd2897e560a66b148c2228e158e117605d2aad43f6
2020/06/19 18:27:44 [INFO] ▶ Image [secureimages/node-exporter:1.0.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/node-exporter:1.0.1-alpine-3.12.0
2020-06-19T15:27:49.793Z        INFO    Need to update DB
2020-06-19T15:27:49.793Z        INFO    Downloading DB...
2020-06-19T15:27:55.254Z        INFO    Detecting Alpine vulnerabilities...

secureimages/node-exporter:1.0.1-alpine-3.12.0 (alpine 3.12.0)
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
2020/06/19 18:28:00 [INFO] ▶ Start clair-scanner
2020/06/19 18:28:00 [INFO] ▶ Server listening on port 9279
2020/06/19 18:28:00 [INFO] ▶ Analyzing 1bf86d75681d0e961cd6832d4170187b03b35ccdfa89bc7c54592aeaae5ce81f
2020/06/19 18:28:00 [INFO] ▶ Analyzing 034471f8d1cd50ffebd02ea23c0baca150aa8dad5383bf3518d89add109dcd87
2020/06/19 18:28:00 [INFO] ▶ Analyzing b880625260631647dd97f5493b0752516208a77fb738a39e1efadeb1160c4c3c
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress prom/node-exporter:v1.0.1
2020-06-19T15:28:06.636Z        INFO    Need to update DB
2020-06-19T15:28:06.636Z        INFO    Downloading DB...
2020-06-19T15:28:11.041Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
```
