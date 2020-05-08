NAME = cafernandezlo/es_udc_biocai_rbase
R_VERSION = 3.6.3
VERSION = ${R_VERSION}-1.0.1

.PHONY: build build-nocache tag-latest push push-latest release git-tag-version

build:
	docker build --build-arg R_VERSION=${R_VERSION} -t $(NAME):$(VERSION) --rm image

build-nocache:
	docker build --build-arg R_VERSION=${R_VERSION} -t $(NAME):$(VERSION) --no-cache --rm image

tag-latest:
	docker tag $(NAME):$(VERSION) $(NAME):latest

push:
	docker push $(NAME):$(VERSION)

push-latest:
	docker push $(NAME):latest

release: build tag-latest push push-latest

git-tag-version: release
	git tag -a v$(VERSION) -m "v$(VERSION)"
	git push origin v$(VERSION)
