FROM debian:latest
MAINTAINER Johnny Foulds <hfoulds@gmail.com>

ENV BASE_VERSION="0.0.1"
ENV LOG_TAG="[SPARK_BASE_${BASE_VERSION}]:"

RUN echo "$LOG_TAG update and install basic packages" && \
    apt-get -y update && \
    apt -y autoclean && \
    apt -y dist-upgrade


#RUN echo "$LOG_TAG update and install basic packages" && \
#    apt-get -y update && \
#    apt-get install -y locales && \
#    locale-gen $LANG && \
#    apt-get install -y software-properties-common && \
#    apt -y autoclean && \
#    apt -y dist-upgrade && \
#    apt-get install -y build-essential

# Install the JAVA 8 JDK
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
RUN echo "$LOG_TAG Install java8" && \
    apt-get -y update && \
    apt-get install -y openjdk-8-jdk && \
    rm -rf /var/lib/apt/lists/*
	
# perform the final cleanup
RUN echo "$LOG_TAG Cleanup" && \
    apt-get autoclean && \
    apt-get clean