#!/bin/bash

read -p "Introdueix la ruta del fitxer: " fitxer

permisos=$(ls -ld "$fitxer" | cut -d ' ' -f 1)

echo "Permisos del fitxer '$fitxer':"


if [ "${permisos:1:1}" == "r" ]; then
  echo " - El propietari pot llegir el fitxer."
else
  echo " - El propietari NO pot llegir el fitxer."
fi

if [ "${permisos:2:1}" == "w" ]; then
  echo " - El propietari pot escriure al fitxer."
else
  echo " - El propietari NO pot escriure al fitxer."
fi

if [ "${permisos:3:1}" == "x" ]; then
  echo " - El propietari pot executar el fitxer."
else
  echo " - El propietari NO pot executar el fitxer."
fi


if [ "${permisos:4:1}" == "r" ]; then
  echo " - El grup pot llegir el fitxer."
else
  echo " - El grup NO pot llegir el fitxer."
fi

if [ "${permisos:5:1}" == "w" ]; then
  echo " - El grup pot escriure al fitxer."
else
  echo " - El grup NO pot escriure al fitxer."
fi

if [ "${permisos:6:1}" == "x" ]; then
  echo " - El grup pot executar el fitxer."
else
  echo " - El grup NO pot executar el fitxer."
fi

if [ "${permisos:7:1}" == "r" ]; then
  echo " - Altres usuaris poden llegir el fitxer."
else
  echo " - Altres usuaris NO poden llegir el fitxer."
fi

if [ "${permisos:8:1}" == "w" ]; then
  echo " - Altres usuaris poden escriure al fitxer."
else
  echo " - Altres usuaris NO poden escriure al fitxer."
fi

if [ "${permisos:9:1}" == "x" ]; then
  echo " - Altres usuaris poden executar el fitxer."
else
  echo " - Altres usuaris NO poden executar el fitxer."
fi
