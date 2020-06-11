# Prometheus node exporter

Prometheus node exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~25.1MB)

Security scanning using Clair
```
clair-scanner secureimages/node-exporter:1.0.0-alpine-3.12.0
2020/06/11 12:09:58 [INFO] ▶ Start clair-scanner
2020/06/11 12:09:59 [INFO] ▶ Server listening on port 9279
2020/06/11 12:09:59 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/11 12:09:59 [INFO] ▶ Analyzing 0442ae736c6f713c3f50f6f643727e318ece2ea1720b40d4e8f4eda8cac35163
2020/06/11 12:09:59 [INFO] ▶ Image [secureimages/node-exporter:1.0.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/node-exporter:1.0.0-alpine-3.12.0
2020-06-11T09:10:05.913Z        INFO    Need to update DB
2020-06-11T09:10:05.913Z        INFO    Downloading DB...
2020-06-11T09:10:10.392Z        INFO    Detecting Alpine vulnerabilities...

secureimages/node-exporter:1.0.0-alpine-3.12.0 (alpine 3.12.0)
==============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~26.3MB)

[https://hub.docker.com/r/prom/node-exporter](https://hub.docker.com/r/prom/node-exporter)
```
docker pull prom/node-exporter:v1.0.0
```

Security scanning using Clair
```
clair-scanner prom/node-exporter:v1.0.0
2020/06/11 12:10:16 [INFO] ▶ Start clair-scanner
2020/06/11 12:10:16 [INFO] ▶ Server listening on port 9279
2020/06/11 12:10:16 [INFO] ▶ Analyzing 1bf86d75681d0e961cd6832d4170187b03b35ccdfa89bc7c54592aeaae5ce81f
2020/06/11 12:10:16 [INFO] ▶ Analyzing 034471f8d1cd50ffebd02ea23c0baca150aa8dad5383bf3518d89add109dcd87
2020/06/11 12:10:17 [INFO] ▶ Analyzing 482c245665d9dbb59bf86be0c07b12d423a5e7b56bb8c185211aee78e4fa0f6f
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress prom/node-exporter:v1.0.0
2020-06-11T09:10:22.491Z        INFO    Need to update DB
2020-06-11T09:10:22.491Z        INFO    Downloading DB...
2020-06-11T09:10:27.269Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
```
