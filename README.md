# Dockerfiles

This repo is where the rm team store their docker image files used in builds and tooling.

## [JDK 17 Maven Node 22](/jdk17-maven-node22)

A tooling image with JDK, Maven, and Node version 22, to enable the building of JS front end resources in Java backend services.

Build with

```shell
make jdk17-maven-node22
```

## [GCloud PubSub Emulator](/gcloud-pubsub-emulator)

A dockerized version of the GCloud PubSub emulator tool, useful for local testing and development.

Build with

```shell
make gcloud-pubsub-emulator
```

## [Tinyproxy](/tinyproxy)

A lightweight Alpine image with Tinyproxy installed and configured for our needs.

Build with

```shell
make tinyproxy
```

## [CloudSQL Proxy](/cloudsql-proxy)

A lightweight google Cloud SQL proxy.

Build with

```shell
make cloudsql-proxy
```

## [Python Pipenv](/python-pipenv)

This image is intended to be used as a base for our Python services and tools, having `pipenv` and other required build
time dependencies such as `gcc` built in.

Currently, we maintain it for these python versions:

- 3.12
- 3.14

To update the python base versions, update the relevant `python-3.x-tag.txt` file, ensuring you use the `slim` image and
pin it to the SHA digest explicitly.

Build the latest version with:

```shell
make python-pipenv
```

Or build a specific version with `make python-pipenv-3.x`, e.g.:

```shell
make python-pipenv-3.14
```

## [Cloud SDK Terraform](/cloud-sdk-terraform)

A cloud SDK based image with TFenv and a Terraform version pre installed.

Build with

```shell
make cloud-sdk-terraform
```


## [EQ Stub](/eq-stub)

A basic python flask app stubbing EQ API endpoints

Build with

```shell
make eq-stub
```
