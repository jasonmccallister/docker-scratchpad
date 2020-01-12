VENDOR ?= jasonmccallister
IMAGE ?= scratchpad
TAG ?= latest
USERNAME ?= themccallister

build:
	docker build -t ${VENDOR}/${IMAGE}:${TAG} .

push: login
	docker push ${VENDOR}/${IMAGE}:${TAG}

login:
	echo ${DOCKER_LOGIN} | docker login --username ${USERNAME} --password-stdin
