# Birthday Reminder Web App (DOKS Deployment)

This repository contains a containerized web application deployed on **DigitalOcean Kubernetes (DOKS)** to demonstrate scalability, performance, and cost-effective infrastructure. The app displays a basic birthday reminder dashboard and is optimized with autoscaling and load balancing.

---

## Overview

- **Tech Stack**: Python (Flask), Docker, Kubernetes, DigitalOcean
- **Architecture Goals**:
  - **Scalability**: Automatically scale pods based on CPU usage
  - **Performance**: Deliver consistent response times via HPA and load balancing
  - **Reliability**: Multi-node cluster for high availability
  - **Cost Optimization**: Efficient resource provisioning with autoscaling

---

## Features

- Placeholder web app built with Flask
- Deployed using Kubernetes Deployment and Service
- Horizontal Pod Autoscaler (HPA) scales pods from 2–5 replicas
- LoadBalancer service exposes the app to the internet
- Container image hosted on DigitalOcean Container Registry (DOCR)
- DOKS cluster with multiple nodes for fault tolerance

---

## ⚙️ Setup & Deployment

### 🔧 Prerequisites

- [doctl](https://docs.digitalocean.com/reference/doctl/) CLI installed and authenticated
- Docker installed and running
- kubectl configured for your DOKS cluster

### 🐳 1. Build & Push Docker Image

```
docker build -t birthday-app .
docker tag birthday-app registry.digitalocean.com/<your-registry-name>/birthday-app:latest
docker push registry.digitalocean.com/<your-registry-name>/birthday-app:latest
```

### 2. Deploy Kubernetes Resources
```
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl apply -f k8s/hpa.yaml
```

To view external IP:
```
kubectl get svc
```

### 3. Verify HPA
```
kubectl get hpa
kubectl get pods -o wide
```

To simulate traffic:
```
ab -n 10000 -c 100 http://<external-ip>/
```
