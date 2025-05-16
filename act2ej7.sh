#!/bin/bash

echo "a. Sumar"
echo "b. Restar"
echo "c. Multiplicar"
echo "d. Dividir"

read -p "Què vols fer? " operacio

read -p "Escriu el primer número: " num1

if ! [[ "$num1" =~ ^-?[0-9]+$ ]]; then
  echo "Error: El primer valor no és un número enter."
  exit 1
fi

read -p "Escriu el segon número: " num2

if ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
  echo "Error: El segon valor no és un número enter."
  exit 1
fi

if [ "$operacio" = "a" ]; then
  resultat=$((num1 + num2))
elif [ "$operacio" = "b" ]; then
  resultat=$((num1 - num2))
elif [ "$operacio" = "c" ]; then
  resultat=$((num1 * num2))
elif [ "$operacio" = "d" ]; then
  if [ "$num2" -eq 0 ]; then
    echo "Error! No es pot dividir entre 0."
    exit 1
  else
    resultat=$((num1 / num2))
  fi
else
  echo "Error: Opció no vàlida. Has d'escriure a, b, c o d."
  exit 1
fi

echo "Resultat: $resultat"
