# spotifyutils

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.16.0](https://img.shields.io/badge/AppVersion-1.16.0-informational?style=flat-square)

SpotifyUtils

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| database.address | string | `"db"` | The MySQL address, without port |
| database.database | string | `"spotifyutils"` | The MySQL database |
| database.password | string | `"password"` | The MySQL password |
| database.port | string | `"3306"` | The MySQL port |
| database.user | string | `"root"` | The MySQL user |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.repository | string | `"ghcr.io/tedyst/spotifyutils"` |  |
| image.tag | string | `"latest"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.host | string | `"chart-example.local"` |  |
| ingress.tls | list | `[]` |  |
| ingress.traefik | bool | `false` |  |
| ingress.traefikTLS | object | `{}` |  |
| livenessProbe | object | `{}` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| readinessProbe | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"100m"` |  |
| resources.limits.memory | string | `"64Mi"` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"64Mi"` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.readOnlyRootFilesystem | bool | `true` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `1000` |  |
| service.port | int | `5000` |  |
| service.type | string | `"ClusterIP"` |  |
| spotifyutils.debug | bool | `false` | Enable Debug mode |
| spotifyutils.geniusToken | string | `""` | Token from Genius |
| spotifyutils.metrics | bool | `false` | Enable Metrics |
| spotifyutils.redirectURL | string | `"http://spotify.cluster/auth"` | Base URL to Redirect to |
| spotifyutils.secretKey | string | `""` | Secret key generated from `openssl rand -hex 16` |
| spotifyutils.spotifyClientID | string | `""` | Client ID from Spotify |
| spotifyutils.spotifyClientSecret | string | `""` | Client Secret from Spotify |
| tolerations | list | `[]` |  |

