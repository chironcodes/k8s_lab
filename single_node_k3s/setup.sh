#!/usr/bin/bash 
curl https://get.k3s.io | INSTALL_K3S_VERSION=v1.24.8+k3s1 sh

sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config


export KUBECONFIG=~/.kube/config
mkdir ~/.kube 2> /dev/null
sudo k3s kubectl config view --raw > "$KUBECONFIG"
chmod 600 "$KUBECONFIG"