# Ansible Cluster in Docker Container & Kubernetes Pod

This project demonstrates how to manually set up an Ansible cluster with a master and multiple nodes inside Docker containers and Kubernetes pods, without using pre-built images. It’s designed for automation testing and learning purposes.

## Project Overview

- Manual setup of Ansible Master and Nodes in Docker containers and Kubernetes pods.
- Dynamic inventory management for Kubernetes environment.
- Sample Ansible playbook to install packages on all nodes.
- Kubernetes manifests for deploying the cluster.
- Passwordless SSH configuration between master and nodes.

## Prerequisites

- Docker installed and running
- Kubernetes cluster (e.g., Minikube, Docker Desktop)
- kubectl configured to access your cluster
- Basic understanding of Ansible and Kubernetes

## Usage

1. Deploy the Ansible cluster on Kubernetes:

   ```bash
   kubectl apply -f ansible-cluster.yaml
   
2. Copy inventory and playbook files from the master pod:
   ```bash
   kubectl cp ansible/master-<pod_id>:/home/ansible/inventory ./inventory
   
   kubectl cp ansible/master-<pod_id>:/home/ansible/install_package.yml ./install_package.yml
   
3. Run Ansible commands from the master or your local machine:
   ```bash
   ansible -i inventory nodes -m ping
   
   ansible-playbook -i inventory install_package.yml

   
