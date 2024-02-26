VERSION=v1.0.1
BUILD_DATE=2024-02-26

build:
	go build -o ./examples/bin/main ./main.go

test:
	cd ./examples && ./examples/bin/main init 

install:
	go install -ldflags "-X 'main.Version=${v1.0.0}' -X 'main.BuildDate=${BUILD_DATE}'"

push:
	git tag ${VERSION}
	git push origin --tags