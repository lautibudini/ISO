#!/bin/bash
echo "Ingrese dos numeros : "
read num1 num2
echo "La Multiplicacion de ${num1} y ${num2} : $(($num1 * $num2))"
echo "La suma de los numeros es : $(($num1 + $num2))"
echo "La resta de los numeros es : $(($num1 - $num2))"
echo "La division de los numeros es : $(($num1 / $num2))"
if [ $num1 -gt $num2 ]; then
  echo "Es mayor el $num1"
else
  echo "Es mayor el $num2"
fi
