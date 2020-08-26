APP=cmd/guser/main.go
PACKAGE=build/package/guser
DOCKERFILE=build/package/Dockerfile

.PHONY: run
run:
	go run ${APP}

.PHONY: build
build:
	go build -o ${PACKAGE} ${APP}

.PHONY: docker-build
docker-build:
	docker build -t hapoon/guser:latest -f ${DOCKERFILE} .

