#!/bin/bash
echo "Introdueix un número enter:"
read numero

if [ "$numero" -gt 0 ]; then
    echo "El número és positiu."
elif [ "$numero" -lt 0 ]; then
    echo "El número és negatiu."
else
    echo "El número és zero."
fi
