FROM sparkdev-scala:latest
MAINTAINER Johnny Foulds <hfoulds@gmail.com>

ENV BASE_VERSION=0.0.1
ENV SPARK_VERSION=2.4.3
ENV HADOOP_VERSION=2.7
ENV SPARK_TAR=spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz

ENV SPARK_HOME=/usr/spark/spark-{SPARK_VERSION}-bin-hadoop{HADOOP_VERSION}

ENV LOG_TAG="[SPARK_SPARK_${BASE_VERSION}]:"

RUN echo "$LOG_TAG update" && \
    apt-get -y update && \
    apt -y autoclean && \
    apt -y dist-upgrade

RUN echo "$LOG_TAG installing spark-${SPARK_VERSION}" && \
	mkdir /usr/spark && \
	cd /usr/spark && \
	wget --no-verbose archive.apache.org/dist/spark/spark-${SPARK_VERSION}/${SPARK_TAR} && \
	tar xvzf ${SPARK_TAR} && \
	export PATH=$PATH:$SPARK_HOME/bin && \
	rm $SPARK_TAR

# perform the final cleanup
RUN echo "$LOG_TAG Cleanup" && \
    apt-get autoclean && \
    apt-get clean &&  \
	rm -rf /var/lib/apt/lists/*