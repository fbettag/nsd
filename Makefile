CR_NAME ?= ghcr.io/fbettag/nsd
CR_VERSION ?= `git describe --tags --always --dirty`-`git rev-parse --abbrev-ref HEAD`

build:
	docker build -t nsd:$(CR_VERSION) -t nsd:latest .

publish: ## Publish
	docker build -t $(CR_NAME):$(CR_VERSION) -t $(CR_NAME):latest .
	docker push $(CR_NAME)
