#!/bin/bash

#Agrego a un arreglo todos los archivos de /home
archivos=($(ls -R $HOME | grep ".doc"))


ver_archivo(){
  for i in ${archivos[*]}
  do
    if [ $1 == $i ]
    then
      ruta=$(find $HOME -name "$1")
      cat $ruta
      return 0
    fi
  done
  echo "Archivo no encontrado"
  return 5
}

cantidadArchivos(){
  echo "La cantidad de archivos del /home con terminación .doc son : ${#archivos[*]}"
}


borrarArchivo(){
  #Valido que este el archivo : 
  local pos=0
  for i in ${archivos[*]}
  do
    if [ $1 == $i ]
    then
      echo "Si  quire eliminar el archivo logicamente responda : si "
      read respuesta
      case $respuesta in
      si)
        #Eliminamos el archivo del arreglo
        unset archivos[$pos] 
        echo "Se elimino el archivo"
      ;;
      no) 
        #Eliminamos el archivo original
        unset archivos[$pos]
        ruta=$(find $HOME -name "$1" )
        rm "$ruta"
        echo "Eliminación del archivo correctamente"
      ;;
      *)
        echo "El valor ingreasado es incorrecto"
        return 1
      ;;
      esac
      return 0
    fi
    ((pos++))
  done
  echo "El archivo no existe"
  return 10
  
}


echo "${archivos[*]}"
cantidadArchivos
ver_archivo ejemplo2.doc
borrarArchivo ejemplo2.doc