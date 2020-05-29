# Prometheus node exporter

Prometheus node exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~25.2MB)

Security scanning using Clair
```
clair-scanner secureimages/node-exporter:1.0.0-alpine-3.11.6
2020/05/29 12:39:29 [INFO] ▶ Start clair-scanner
2020/05/29 12:39:29 [INFO] ▶ Server listening on port 9279
2020/05/29 12:39:29 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/29 12:39:29 [INFO] ▶ Analyzing 955d45093ac7ecd4c30e796d74dcbd0bfc17fa996f05a87a11ea7373183a4a2f
2020/05/29 12:39:29 [INFO] ▶ Image [secureimages/node-exporter:1.0.0-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.8.0 --no-progress secureimages/node-exporter:1.0.0-alpine-3.11.6
2020-05-29T09:39:41.773Z        INFO    Need to update DB
2020-05-29T09:39:41.773Z        INFO    Downloading DB...
2020-05-29T09:39:46.241Z        INFO    Detecting Alpine vulnerabilities...

secureimages/node-exporter:1.0.0-alpine-3.11.6 (alpine 3.11.6)
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
2020/05/29 12:40:10 [INFO] ▶ Start clair-scanner
2020/05/29 12:40:12 [INFO] ▶ Server listening on port 9279
2020/05/29 12:40:12 [INFO] ▶ Analyzing 1bf86d75681d0e961cd6832d4170187b03b35ccdfa89bc7c54592aeaae5ce81f
2020/05/29 12:40:12 [INFO] ▶ Analyzing 034471f8d1cd50ffebd02ea23c0baca150aa8dad5383bf3518d89add109dcd87
2020/05/29 12:40:12 [INFO] ▶ Analyzing 482c245665d9dbb59bf86be0c07b12d423a5e7b56bb8c185211aee78e4fa0f6f
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.8.0 --no-progress prom/node-exporter:v1.0.0
2020-05-29T09:40:19.566Z        INFO    Need to update DB
2020-05-29T09:40:19.566Z        INFO    Downloading DB...
2020-05-29T09:40:24.839Z        WARN    This OS is not supported and vulnerabilities in OS packages are not detected.
```
