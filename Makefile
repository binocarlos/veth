VERSION=v0.0.1
IMAGE=binocarlos/veth

.PHONY: build
build:
	docker build -t $(IMAGE):$(VERSION) .
	docker tag $(IMAGE):$(VERSION) $(IMAGE):latest

.PHONY: release
release:
	docker push $(IMAGE):$(VERSION)
	docker push $(IMAGE):latest