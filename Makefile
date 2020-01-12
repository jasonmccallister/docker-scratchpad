USERNAME ?= jasonmccallister
IMAGE ?= scratchpad
TAG ?= latest

build:
	docker build -t ${USERNAME}/${IMAGE}:${TAG} .

push: login
	docker push ${USERNAME}/${IMAGE}:${TAG}

login:
	echo ${DOCKER_LOGIN} | docker login --username ${USERNAME} --password-stdin
