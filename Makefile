.PHONY: jdk17-maven-node22 gcloud-firestore-emulator gcloud-pubsub-emulator modsecurity cloud-sdk-firebase-cli tinyproxy cloudsql-proxy python-pipenv cloud-sdk-terraform eq-stub owasp-venom

jdk17-maven-node22:
	docker build ./jdk17-maven-node22 -t jdk17-mvn-node22-npm:latest

gcloud-pubsub-emulator:
	docker build ./gcloud-pubsub-emulator -t gcloud-pubsub-emulator:latest

gcloud-firestore-emulator:
	docker build ./gcloud-firestore-emulator -t gcloud-firestore-emulator:latest

modsecurity:
	docker build ./modsecurity -t modsecurity:latest

cloud-sdk-firebase-cli:
	docker build ./cloud-sdk-firebase-cli -t cloud-sdk-firebase-cli:latest

tinyproxy:
	docker build ./tinyproxy -t tinyproxy:latest

cloudsql-proxy:
	docker build ./cloudsql-proxy -t cloudsql-proxy:latest

python-pipenv: python-pipenv-3.14

python-pipenv-3.14:
	docker build --build-arg="PYTHON_TAG=$$(cat python-pipenv/python-3.14-tag.txt)" ./python-pipenv -t python-pipenv:3.14

cloud-sdk-terraform:
	docker build ./cloud-sdk-terraform -t cloud-sdk-terraform:latest

eq-stub:
	docker build ./eq-stub -t census-rm-eq-stub:latest

owasp-venom:
	docker build ./owasp-venom -t venom:latest

build-all: gcloud-pubsub-emulator gcloud-firestore-emulator modsecurity cloud-sdk-firebase-cli tinyproxy cloudsql-proxy python-pipenv cloud-sdk-terraform eq-stub owasp-venom
