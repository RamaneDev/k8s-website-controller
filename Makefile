build:
	CGO_ENABLED=0 GOOS=linux go build -o website-controller -a pkg/website-controller.go

image: build
	docker build -t ramane/custom-web-controller:debug .

push: image
	docker push ramane/custom-web-controller:debug


