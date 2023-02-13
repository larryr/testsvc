

help:
	@echo "testsvc for grpc services"


setup:
	@echo setting up tooling
	#@echo install gRPC library
	#@go get -u google.golang.org/grpc
	#@echo install protoc -- grpc compliler
	#@go get -u google.golang.org/protobuf
	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
	protoc --version

genstub:
	protoc -I s1 s1/s1.proto --go_out=s1 --go-grpc_out=s1 s1/s1.proto

