IMAGE := kitos9112/docker-ansible-fedora31
VERSION ?= latest
test:
	true

image:
	docker build -t ${IMAGE}:${VERSION} .
	docker tag ${IMAGE}:${VERSION} ${IMAGE}:latest

push:
	docker push ${IMAGE}:${VERSION}
	docker push ${IMAGE}:latest
