#!/usr/bin/env bash
#
# Corre los contenedores de Docker del servidor islasgeci.dev

# Carga credenciales:
HOME=/home/ciencia_datos



# Corre contenedores
docker pull islasgeci/reproducibility_inspector:latest
docker run \
    --detach \
    --name reproducibility_inspector \
    --rm \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    --volume ${HOME}/.testmake:${HOME}/.testmake \
    --volume ${HOME}/.vault:${HOME}/.vault \
    islasgeci/reproducibility_inspector:latest
