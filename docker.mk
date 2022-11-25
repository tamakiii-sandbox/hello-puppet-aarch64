.PHONY: help build bash clean

IMAGE := tamakiii-sandbox/hello-puppet-aarch64

help:
	@cat $(firstword $(MAKEFILE_LIST))

build: Dockerfile
	docker build -t $(IMAGE) .

bash: build
	docker run -it --rm $(IMAGE) $@

clean:
	docker image rm $(IMAGE)
