# Prometheus node exporter

Prometheus node exporter, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/node-exporter:0.18.1-alpine-3.11.3
2020/01/20 22:02:09 [INFO] ▶ Start clair-scanner
2020/01/20 22:02:09 [INFO] ▶ Server listening on port 9279
2020/01/20 22:02:09 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/20 22:02:09 [INFO] ▶ Analyzing 707f6abe3ca583f0177984d02aabf9ccd3f367d69b85cc5014fa6f07c2d84b77
2020/01/20 22:02:09 [INFO] ▶ Image [secureimages/node-exporter:0.18.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/node-exporter:0.18.1-alpine-3.11.3
2020-01-20T20:02:20.469Z        INFO    Need to update DB
2020-01-20T20:02:20.469Z        INFO    Downloading DB...
2020-01-20T20:02:24.585Z        INFO    Reopening DB...
2020-01-20T20:02:25.316Z        INFO    Detecting Alpine vulnerabilities...

secureimages/node-exporter:0.18.1-alpine-3.11.3 (alpine 3.11.3)
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
2020/01/20 22:02:46 [INFO] ▶ Start clair-scanner
2020/01/20 22:02:47 [INFO] ▶ Server listening on port 9279
2020/01/20 22:02:47 [INFO] ▶ Analyzing 2c60b6358b978acc2fe08e020c964c7d35ced75205022acc55824e5b75991164
2020/01/20 22:02:47 [INFO] ▶ Analyzing ba82b105cc1b178d106a917f07c2b45a1985943c64bdbcb57984d117a6b3da70
2020/01/20 22:02:47 [INFO] ▶ Analyzing cbfde1575269840c9750c7ab51d53d4b2be76894ae315f4847ef74a5a806b82c
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress prom/node-exporter:v0.18.1
2020-01-20T20:03:00.737Z        INFO    Need to update DB
2020-01-20T20:03:00.737Z        INFO    Downloading DB...
2020-01-20T20:03:05.039Z        INFO    Reopening DB...
2020-01-20T20:03:05.490Z        FATAL   error in image scan: failed to scan the image: failed to analyze OS: Unknown OS
```
