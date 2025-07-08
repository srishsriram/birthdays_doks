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

- Web app placeholder built with Flask and Jinja2
- Deployed using Kubernetes Deployment and Service
- Horizontal Pod Autoscaler (HPA) scales pods from 2–5 replicas
- LoadBalancer service exposes the app to the internet
- Container image hosted on DigitalOcean Container Registry (DOCR)
- DOKS cluster with multiple nodes for fault tolerance

---

## Project Structure
.
├── Dockerfile
├── k8s/
│ ├── deployment.yaml
│ ├── service.yaml
│ └── hpa.yaml
├── packages/
│ └── reminders/
│ └── birthdays/
│ ├── main.py
│ ├── requirements.txt
│ └── templates/
│ └── index.html
├── .env.example
└── README.md

---

## ⚙️ Setup & Deployment

### 🔧 Prerequisites

- [doctl](https://docs.digitalocean.com/reference/doctl/) CLI installed and authenticated
- Docker installed and running
- `kubectl` configured for your DOKS cluster

---

### 🐳 1. Build & Push Docker Image

```
bash
docker build -t birthday-app .
docker tag birthday-app registry.digitalocean.com/<your-registry-name>/birthday-app:latest
docker push registry.digitalocean.com/<your-registry-name>/birthday-app:latest
```
