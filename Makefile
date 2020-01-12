VENDOR ?= jasonmccallister
IMAGE ?= scratchpad
TAG ?= latest

build:
	docker build -t ${VENDOR}/${IMAGE}:${TAG} .
