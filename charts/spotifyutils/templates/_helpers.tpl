{{/*
Expand the name of the chart.
*/}}
{{- define "spotifyutils.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "spotifyutils.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "spotifyutils.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "spotifyutils.labels" -}}
helm.sh/chart: {{ include "spotifyutils.chart" . }}
{{ include "spotifyutils.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "spotifyutils.selectorLabels" -}}
app.kubernetes.io/name: {{ include "spotifyutils.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Expand the uri of the database
*/}}
{{- define "spotifyutils.database.uri" -}}
{{- $path := "" -}}
{{- if .Values.database.create -}}
{{- $name := include "spotifyutils.name" . -}}
{{- $path = printf "%s-%s" $name .Values.database.nameOverride -}}
{{- else -}}
{{- $path = .Values.database.address -}}
{{- end -}}
{{- printf "%s:%s@tcp(%s:%v)/%s" .Values.database.mysql.user .Values.database.mysql.password $path .Values.database.service.port .Values.database.mysql.database -}}
{{- end }}