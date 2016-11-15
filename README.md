# ambari-server
Docker Image of Ambari Server

## Note
Please note that this project is not officially supported by Hortonworks and may not be suitable for production use. It can be used to experiment with Hadoop on Docker 

## Docker Installation
Follow the description at the docker getting started page for your appropriate OS: ([Linux](http://docs.docker.com/linux/started/), [Mac](http://docs.docker.com/mac/started/), [Windows](http://docs.docker.com/windows/started/))

## Using this Image
Just use docker hub. If you wanna build yourself, I have create a makefile.

```
# Build image from dockerfile on github
git clone https://github.com/kalamangga-net/ambari-server.git
cd ambari-server
make image

# Use latest image from docker hub
docker pull kalamangga/ambari-server:latest
```
