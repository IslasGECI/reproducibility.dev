#!/usr/bin/env bash
#
# Corre los contenedores de Docker del servidor islasgeci.dev

# Carga credenciales:
HOME=/home/ciencia_datos

# Corre contenedores
docker pull islasgeci/jenkins:latest
docker run \
    --detach \
    --name jenkins \
    --publish 50000:50000 \
    --publish 8080:8080 \
    --rm \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    --volume ${HOME}/.vault/.secrets:/.vault/.secrets \
    --volume jenkins_home:/var/jenkins_home \
    islasgeci/jenkins:latest

docker pull islasgeci/reproducibility_inspector:latest
docker run \
    --detach \
    --name reproducibility_inspector \
    --rm \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    --volume ${HOME}/.testmake:${HOME}/.testmake \
    --volume ${HOME}/.vault:${HOME}/.vault \
    islasgeci/reproducibility_inspector:latest

docker pull islasgeci/weak_inspector:latest
docker run \
    --detach \
    --name weak_inspector \
    --rm \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    --volume ${HOME}/.vault/.secrets:/.vault/.secrets \
    islasgeci/weak_inspector:latest
