# Apache Spark Development Environment
Setting up a simple Apache Spark environment used for working with Spark in a development environment.

On the [References](https://github.com/JohnnyFoulds/spark-dev/wiki/References) page there are resources to help setting up a Apache Spark cluster. This is however not the goal of this project and the intend is to simply build something lightweight that can be spun up as quick as possible to start using Spark.

The environment will be set up as a stand alone docker container with the minimum amount of software installed.

## Docker Containers
### Base
The base Docker image will be used as the starting point for all the other containers within this project. It will be build `FROM debian:latest` and will include the following:
- Java 8 OpenJDK
- wget
- curl
- grep
- sed
- ssh
- git

### Scala
This image is build `` and deploys Scala to the system.


The goal is to have the minimum amount of components installed to have this as lightweight as possible.

## Apache Zeppelin
An important part of the development environment will also be to have Zeppelin available, the intention is to have that as a new Dockerfile that builds on the original environment created in this project.

A possible shortcut to all of this is to just use the official Apache Zeppelin container on [Docker Hub](https://hub.docker.com/r/apache/zeppelin) and this will definitely be used as reference.
