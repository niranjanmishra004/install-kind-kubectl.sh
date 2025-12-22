#!/bin/bash
set -e

# Install kind
if [ "$(uname -m)" = "x86_64" ]; then
  curl -Lo kind https://kind.sigs.k8s.io/dl/v0.31.0/kind-linux-amd64
  chmod +x kind
  sudo mv kind /usr/local/bin/
else
  echo "Unsupported architecture"
  exit 1
fi

# Install kubectl
VERSION="v1.35.0"
URL="https://dl.k8s.io/release/${VERSION}/bin/linux/amd64/kubectl"
INSTALL_DIR="/usr/local/bin"

curl -LO "$URL"
chmod +x kubectl
sudo mv kubectl "$INSTALL_DIR/"

# Verify
kubectl version --client

echo "kind & kubectl installation is complete"

