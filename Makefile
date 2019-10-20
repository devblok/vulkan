OS := $(shell uname -s)

all: ${OS}

Linux:
	c-for-go -ccdefs -ccincl -out .. vulkan-unix.yml

Darwin:
	c-for-go -ccdefs -ccincl -out .. vulkan-darwin.yml

clean:
	rm -f doc.go types.go const.go
	rm -f cgo_helpers.go cgo_helpers.c cgo_helpers.h
	rm -f vulkan.go

test:
	go build
