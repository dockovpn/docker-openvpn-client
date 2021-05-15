.PHONY: build clean push run

all: build push

build:
	docker build -t alekslitvinenk/openvpn-client:latest . --no-cache

push:
	docker push alekslitvinenk/openvpn-client:latest

run:
	docker run --cap-add=NET_ADMIN \
	-v $(pwd)/Dockovpn_data:/opt/Dockovpn_data \
	alekslitvinenk/openvpn-client:latest
