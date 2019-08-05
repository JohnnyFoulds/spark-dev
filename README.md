# Apache Spark Development Environment
Setting up a simple Apache Spark environment used for working with Spark in a development environment.

On the [References](https://github.com/JohnnyFoulds/spark-dev/wiki/References) page there are resources to help setting up a Apache Spark cluster. This is however not the goal of this project and the intend is to simply build something lightweight that can be spun up as quick as possible to start using Spark.

The environment will be set up as a stand alone docker container with the minimum amount of software installed.

## Docker Containers
### Base

## Apache Zeppelin
An important part of the development environment will also be to have Zeppelin available, the intention is to have that as a new Dockerfile that builds on the original environment created in this project.

A possible shortcut to all of this is to just use the official Apache Zeppelin container on [Docker Hub](https://hub.docker.com/r/apache/zeppelin) and this will definitely be used as reference.
