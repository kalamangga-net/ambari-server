all: image push
image:
	docker build -t kalamangga/ambari-server .
push:
	docker push kalamangga/ambari-server
pull:
	docker pull kalamangga/ambari-server
