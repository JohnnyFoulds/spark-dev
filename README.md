# Apache Spark Development Environment
Setting up a simple Apache Spark environment used for working with Spark in a development environment.

On the [References](https://github.com/JohnnyFoulds/spark-dev/wiki/References) page there are resources to help setting up a Apache Spark cluster. This is however not the goal of this project and the intend is to simply build something lightweight that can be spun up as quick as possible to start using Spark.

The ultimate goal is to have images with the minimum amount of components installed to have a development environment as lightweight as possible.

## Docker Containers
### Base
The base Docker image will be used as the starting point for all the other containers within this project. It will be build `FROM debian:latest` and will include the following:
- Java 11 Headless OpenJDK
- wget
- curl
- ssh
- git

The headless JRE was selected because it is much smaller than the full openjdk-11-jdk package.

### Scala
This image is build `FROM sparkdev-base` and installs Scala 2.12.8. A later version can be installed by changing the Dockerfile, but this choice was again made because the latest version is significantly larger and does not fit with the idea of configuring a relatively lightweight development environment.


## Apache Zeppelin
An important part of the development environment will also be to have Zeppelin available, the intention is to have that as a new Dockerfile that builds on the original environment created in this project.

A possible shortcut to all of this is to just use the official Apache Zeppelin container on [Docker Hub](https://hub.docker.com/r/apache/zeppelin) and this will definitely be used as reference.
