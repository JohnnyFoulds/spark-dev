FROM sparkdev-base:latest
MAINTAINER Johnny Foulds <hfoulds@gmail.com>

ENV BASE_VERSION="0.0.1"
ENV SCALA_VERSION="2.12.8"
ENV LOG_TAG="[SPARK_SCALA_${BASE_VERSION}]:"

RUN echo "$LOG_TAG update" && \
    apt-get -y update && \
    apt -y autoclean && \
    apt -y dist-upgrade

RUN echo "$LOG_TAG installing scala-${SCALA_VERSION}" && \
	wget www.scala-lang.org/files/archive/scala-${SCALA_VERSION}.deb && \
	dpkg -i scala-${SCALA_VERSION}.deb
    
	
# perform the final cleanup
RUN echo "$LOG_TAG Cleanup" && \
    apt-get autoclean && \
    apt-get clean &&  \
	rm -rf /var/lib/apt/lists/*