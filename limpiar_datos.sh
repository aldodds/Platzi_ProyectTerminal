#!/bin/bash
#Este script debe ser ejecutado por el interprete de bash

# Definir directorios
DIR_ENTRADA="datos_entrada"
# Define la variable DIR_ENTRADA con el nombre del directorio de entrada
DIR_SALIDA="datos_procesados"
# Define la variable DIR_SALIDA con el nombre del directorio de salida

# Procesar cada archivo CSV en el directorio de entrada
for archivo in $DIR_ENTRADA/*.csv
# Inicia un bucle que itera sobre todos los archivos .csv en el directorio de entrada
do
    nombre_archivo=$(basename "$archivo")
    # Extrae el nombre del archivo sin la ruta, usando el comando basename
    echo "Procesando $nombre_archivo..."
    # Imprime un mensaje indicando que archivo se esta procesando

    # Las siguientes lineas realizan la limpieza del archivo:
    cat "$archivo" | # Lee el contenido del archivo
    sed 's/^[[:space:]]*//' | # Elimina espacios en blanco al inicio de cada linea
    sed '/^$/d' | # Elimina lineas vacias
    sed 's/,,/,N\/A,/g; s/,$/,N\/A/' > # Reemplaza campos vacios con 'N/A'
    "$DIR_SALIDA/${nombre_archivo%.csv}_limpio.csv"
    # Guarda el resultado en un nuevo archivo en el directorio de salida
    # %.csv elimina la extension .csv del nombre original

    echo "Archivo limpio guardado como ${nombre_archivo%.csv}_limpio.csv"
    # Imprime un mensaje indicando donde se guardo el archivo limpio
done

echo "Proceso de limpieza completado."
# Imprime un mensaje indicando que todo el proceso ha terminado