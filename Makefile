.PHONY: jdk21-maven-node22 gcloud-pubsub-emulator tinyproxy cloudsql-proxy python-pipenv cloud-sdk-terraform eq-stub owasp-venom

jdk21-maven-node22:
	docker build ./jdk21-maven-node22 -t jdk21-mvn-node22-npm:latest

gcloud-pubsub-emulator:
	docker build ./gcloud-pubsub-emulator -t gcloud-pubsub-emulator:latest

tinyproxy:
	docker build ./tinyproxy -t tinyproxy:latest

cloudsql-proxy:
	docker build ./cloudsql-proxy -t cloudsql-proxy:latest

python-pipenv: python-pipenv-3.14

python-pipenv-3.12:
	docker build --build-arg="PYTHON_TAG=$$(cat python-pipenv/python-3.12-tag.txt)" ./python-pipenv -t python-pipenv:3.12

python-pipenv-3.14:
	docker build --build-arg="PYTHON_TAG=$$(cat python-pipenv/python-3.14-tag.txt)" ./python-pipenv -t python-pipenv:3.14

cloud-sdk-terraform:
	docker build ./cloud-sdk-terraform -t cloud-sdk-terraform:latest

eq-stub:
	docker build ./eq-stub -t census-rm-eq-stub:latest

owasp-venom:
	docker build ./owasp-venom -t venom:latest

build-all: gcloud-pubsub-emulator tinyproxy cloudsql-proxy python-pipenv python-pipenv-3.12 cloud-sdk-terraform eq-stub owasp-venom
