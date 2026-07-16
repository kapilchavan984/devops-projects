#!/bin/bash

PROJECT="project-1-cicd-platform"

echo "Creating project structure..."

# Root Directory
mkdir -p $PROJECT
cd $PROJECT || exit

# Application
mkdir -p app/src
touch app/pom.xml
touch app/README.md

# Root Files
touch Jenkinsfile
touch Dockerfile
touch .dockerignore
touch .gitignore
touch README.md

# Kubernetes
mkdir -p k8s
touch k8s/namespace.yaml
touch k8s/deployment.yaml
touch k8s/service.yaml
touch k8s/ingress.yaml
touch k8s/configmap.yaml
touch k8s/secret.yaml
touch k8s/hpa.yaml

# Helm
mkdir -p helm/devops-app/templates

touch helm/devops-app/Chart.yaml
touch helm/devops-app/values.yaml

touch helm/devops-app/templates/deployment.yaml
touch helm/devops-app/templates/service.yaml
touch helm/devops-app/templates/ingress.yaml
touch helm/devops-app/templates/hpa.yaml

# ArgoCD
mkdir -p argocd

touch argocd/application.yaml
touch argocd/project.yaml
touch argocd/repository.yaml

# SonarQube
mkdir -p sonar

touch sonar/sonar-project.properties

# Scripts
mkdir -p scripts

touch scripts/build.sh
touch scripts/test.sh
touch scripts/sonar-scan.sh
touch scripts/trivy-scan.sh
touch scripts/docker-build.sh
touch scripts/docker-push.sh
touch scripts/deploy.sh
touch scripts/rollback.sh
touch scripts/health-check.sh
touch scripts/cleanup.sh
touch scripts/notify.sh

chmod +x scripts/*.sh

# Monitoring
mkdir -p monitoring

touch monitoring/prometheus-values.yaml
touch monitoring/grafana-dashboard.json
touch monitoring/alerts.yaml

# Documentation
mkdir -p docs/screenshots

touch docs/architecture.png
touch docs/pipeline.png
touch docs/deployment-flow.png

echo "======================================"
echo "Project structure created successfully."
echo "======================================"

tree .