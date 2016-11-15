FROM debian:wheezy
RUN apt-get update && \
  apt-get install wget openjdk-7-java -y \
  apt-get clean -y
RUN wget -nv http://public-repo-1.hortonworks.com/ambari/debian7/2.x/updates/2.4.1.0/ambari.list \
  -O /etc/apt/sources.list.d/ambari.list && \
  apt-key adv --recv-keys --keyserver keyserver.ubuntu.com B9733A7A07513CAD && \
  apt-get update
RUN apt-get install -y ambari-server && \
  ambari-server setup --silent --java-home $JAVA_HOME
RUN systemctl enable ambari-server && \
  service ambari-server start
EXPOSE 8080
