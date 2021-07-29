#!/usr/bin/env bash
#
# Remueve los contenedores e imágenes de Docker
docker rm --force $(docker ps --all --quiet)
docker image rm --force $(docker images --all --quiet)
