FROM debian:latest
MAINTAINER Johnny Foulds <hfoulds@gmail.com>

ENV BASE_VERSION="0.0.1"
ENV LOG_TAG="[SPARK_BASE_${BASE_VERSION}]:"

RUN echo "$LOG_TAG update" && \
    apt-get -y update && \
    apt -y autoclean && \
    apt -y dist-upgrade

RUN echo "$LOG_TAG install basic packages" && \
    apt-get install -y wget curl ssh git

# Install the JAVA 11 JRE
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
RUN echo "$LOG_TAG Install java11" && \
    apt-get -y update && \
    apt-get install -y  openjdk-11-jre-headless && \
    rm -rf /var/lib/apt/lists/*
	
# perform the final cleanup
RUN echo "$LOG_TAG Cleanup" && \
    apt-get autoclean && \
    apt-get clean