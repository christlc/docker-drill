FROM dockerfile/java:oracle-java7
MAINTAINER christlc

RUN apt-get install -y wget tar sudo

# get drill
RUN wget http://www.apache.org/dyn/closer.lua?filename=drill/drill-1.6.0/apache-drill-1.6.0.tar.gz&action=download
# create Drill folder
RUN sudo mkdir -p /opt/drill

# extract Drill
RUN tar -xvzf apache-drill-1.6.0.tar.gz -C /opt/drill

CMD /opt/drill/apache-drill-1.6.0/bin/drill-embedded
