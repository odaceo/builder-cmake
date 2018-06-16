build:
	docker-compose build
.PHONY: build

push: build
	docker-compose push
.PHONY: push

default: build
