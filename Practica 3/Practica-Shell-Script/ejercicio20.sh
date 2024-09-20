#!/bin/bash
#Usamos un arreglo para simular la pila : 
pila=()

push(){
  pila+=($1)
  echo " Se agrego correctamente a la pila : $1 "
}

pop(){
  # Debo sacar el ultimo elemento de la pila
  if [ ${#pila[*]} -ne 0 ];
  then
    unset pila[${#pila[*]}-1]
  else
    echo "La pila ya no posee elementos para eliminar"
  fi
}

lenght(){
  echo "La longitud de la pila es de : ${#pila[*]}"
}

print(){
  for (( i = 0; i< ${#pila[*]}; i++ ))
  do
    echo "Elemento $i : ${pila[$i]} "
  done
}


# Menu para poder realizar las operaciones : 

while true; 
do 
  echo "Ingres el numero de operacion a realizar : "
  echo "1. Agregar elemento"
  echo "2. Quitar elemento"
  echo "3. Mostrar cantidad de elementos "
  echo "4. Mostrar los elementos "
  echo "Cualquier otro caracter para salir "
  read option
  
  case $option in 
    1)
      echo "ingrese el elemento que desea agregar : "
      read item
      push "$item" ;;
    2) 
      pop ;;
    3)
      lenght ;;
    4) 
      print ;;
    *) 
      echo "Saliendo del menu ........"
      exit 0 ;;
  esac
done