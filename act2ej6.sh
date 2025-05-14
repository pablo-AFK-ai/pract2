#!/bin/bash

echo "Introdueix la ruta del fitxer:"
read ruta_fitxer

if [ -e "$ruta_fitxer" ]; then
    if [ -r "$ruta_fitxer" ]; then
        echo "El fitxer és llegible."
    else
        echo "El fitxer no és llegible."
    fi

    if [ -w "$ruta_fitxer" ]; then
        echo "El fitxer és escrivible."
    else
        echo "El fitxer no és escrivible."
    fi


    if [ -x "$ruta_fitxer" ]; then
        echo "El fitxer és executable."
    else
        echo "El fitxer no és executable."
    fi
else
    echo "Error: El fitxer no existeix."
fi
