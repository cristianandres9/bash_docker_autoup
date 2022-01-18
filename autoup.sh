#!/bin/bash
variable=$(docker inspect -f '{{.State.Running}}' nombre-contenedor)
echo -e "############# DOCKERS #############\n
El contenedor esta: $variable \n"
if [ $variable != true ] ; then
echo Contenedor Down Reiniciando
docker start nombre-contenedor
echo COMANDO EJECUTADO
fi

