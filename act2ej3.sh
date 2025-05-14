#!/bin/bash

echo "Introdueix un número enter:"
read numero

if [ "$numero" -eq 0 ]; then
    echo "El número és zero."
else
    echo "El número no és zero."
fi
