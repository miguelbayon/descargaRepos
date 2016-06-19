#!/bin/bash

filename="repos"

while read -r line
do
  comienzoRepositorio=(${line///commit/ })
  temp=${line:19}
  usuario=(${temp//// })
  git clone $comienzoRepositorio.git $usuario
done < $filename
