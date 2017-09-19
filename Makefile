IMAGE=binocarlos/veth

.PHONY: build
build:
	docker build -t $(IMAGE) .
