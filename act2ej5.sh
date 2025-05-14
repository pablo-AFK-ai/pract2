#!/bin/bash


echo "Introdueix la ruta del fitxer:"
read ruta_fitxer


if [ -e "$ruta_fitxer" ]; then
    file "$ruta_fitxer"
else
    echo "Error: El fitxer no existeix."
fi
