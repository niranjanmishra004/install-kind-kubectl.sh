# Kubernetes Local Tools Installer (kind + kubectl)

A simple, reliable Bash script to install **kind** and **kubectl** on Linux systems.  
Designed for beginners learning Kubernetes and developers setting up a clean local environment.

No magic. No conflicts. Just the essentials.

---

## What This Script Does

This script installs:

- **kind** (Kubernetes IN Docker) – for fast local Kubernetes clusters
- **kubectl** – the official Kubernetes command-line tool

Both tools are installed system-wide under `/usr/local/bin`.

---

## Why This Exists

Setting up Kubernetes tools manually is repetitive and error-prone.  
This script provides a **one-command setup** that:

- Works on `x86_64 / amd64` Linux systems
- Avoids conflicts with Minikube or Docker
- Follows traditional, well-tested installation practices

Ideal for:
- Kubernetes beginners
- DevOps learners
- CI/CD or local lab setups

---

## Prerequisites

Make sure you have:

- Linux (x86_64 / amd64)
- `curl` installed
- `sudo` access
- Docker installed (required later for kind clusters)

---

## Tools Installed

| Tool    | Purpose                              |
|--------|--------------------------------------|
| kind   | Run Kubernetes clusters using Docker |
| kubectl | Interact with Kubernetes clusters   |

---

## 🔧 Installation

Clone the repository:

```bash
https://github.com/Aditya-das-4707-e/install-kind-kubectl.sh.git
cd install-kind-kubectl.sh
```
Make the script executable:
```bash
chmod +x install-kind-kubectl.sh
```
Run the script:
```bash
./install-kind-kubectl.sh
```
After installation, verify both tools:
```bash
kind version
kubectl version --client
```
