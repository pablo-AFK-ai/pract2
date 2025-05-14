#!/bin/bash

echo "Introdueix un número enter:"
read numero

if [ "$numero" -lt 0 ]; then
    echo "El número és negatiu."
else
    echo "El número no és negatiu."
fi
