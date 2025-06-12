REGISTRY := ghcr.io/zoetrope/

.PHONY: ubuntu
ubuntu:
	docker build --no-cache -t $(REGISTRY)ubuntu:22.04 ./ubuntu

.PHONY: push-ubuntu
push-ubuntu: ubuntu
	docker push $(REGISTRY)ubuntu:22.04

.PHONY: elasticsearch
elasticsearch:
	docker build --no-cache -t $(REGISTRY)elasticsearch:8.17.0 ./elasticsearch

.PHONY: push-elasticsearch
push-elasticsearch: elasticsearch
	docker push $(REGISTRY)elasticsearch:8.17.0

.PHONY: golang
golang:
	docker build --no-cache -t $(REGISTRY)golang:1.24.4 ./golang

.PHONY: push-golang
push-golang: golang
	docker push $(REGISTRY)golang:1.24.4

.PHONY: nginx
nginx:
	docker build --no-cache -t $(REGISTRY)nginx:1.28.0 ./nginx

.PHONY: push-nginx
push-nginx: nginx
	docker push $(REGISTRY)nginx:1.28.0

.PHONY: node
node:
	docker build --no-cache -t $(REGISTRY)node:22.16.0 ./node

.PHONY: push-node
push-node: node
	docker push $(REGISTRY)node:22.16.0


.PHONY: python
python:
	docker build --no-cache -t $(REGISTRY)python:3.10.12 ./python

.PHONY: push-python
push-python: python
	docker push $(REGISTRY)python:3.10.12
