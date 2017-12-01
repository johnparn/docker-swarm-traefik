
# Getting started

This project is a simple test of how to compose a site of multiple apps, each one in a separate container.

## 1. Init swarm mode

`docker swarm init --advertise-addr=$(hostname -i)`


## 2. Setup local image registry

`docker run -d -p 5000:5000 registry:2`


## 3. Build images and push to registry

`docker-compose build`


## 4. Setup traefik and newly built images

`./setup.sh`

Try to access the web service from http://localhost:8888/


## 5. Cleanup and freeing resources when done

`./uninstall.sh`

This will not remove the registry
