REGISTRY := ghcr.io/zoetrope/

.PHONY: ubuntu
ubuntu:
	docker build --no-cache -t $(REGISTRY)ubuntu:20.04 ./ubuntu

.PHONY: push-ubuntu
push-ubuntu: ubuntu
	docker push $(REGISTRY)ubuntu:20.04

.PHONY: elasticsearch
elasticsearch:
	docker build --no-cache -t $(REGISTRY)elasticsearch:7.9.3 ./elasticsearch

.PHONY: push-elasticsearch
push-elasticsearch: elasticsearch
	docker push $(REGISTRY)elasticsearch:7.9.3

.PHONY: golang
golang:
	docker build --no-cache -t $(REGISTRY)golang:1.17.1 ./golang

.PHONY: push-golang
push-golang: golang
	docker push $(REGISTRY)golang:1.17.1

.PHONY: nginx
nginx:
	docker build --no-cache -t $(REGISTRY)nginx:1.20.1 ./nginx

.PHONY: push-nginx
push-nginx: nginx
	docker push $(REGISTRY)nginx:1.20.1

.PHONY: node
node:
	docker build --no-cache -t $(REGISTRY)node:14.17.6 ./node

.PHONY: push-node
push-node: node
	docker push $(REGISTRY)node:14.17.6


.PHONY: python
python:
	docker build --no-cache -t $(REGISTRY)python:3.8.10 ./python

.PHONY: push-python
push-python: python
	docker push $(REGISTRY)python:3.8.10
