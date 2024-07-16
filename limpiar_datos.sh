#!/bin/bash

#definir directorios
DIR_ENTRADA="datos_entrada"
DIR_SALIDA="datos_procesados"

#Procesar cada archivo CSV en el directorio de entrada
for archivo in $DIR_ENTRADA/*.csv
do
    nombre_archivo=$(basename "$archivo")
    echo "Procesanod $nombre_archivo..."

    #Eliminar espacios en blanco al incio de cada línea
    #Eliminar líneas vacías
    #Reemplazar campos vacíos con 'N/A'

    cat "$archivo" | sed 's/^[[:space:]]*//' | sed '/^$/d' | sed 's/,,/,N\/A,/g; s/,$/,N\/A/' > "$DIR_SALIDA/${nombre_archivo%.csv}_limpio.csv"

    echo "Archivo limpio guardado como ${nombre_archivo%.csv}_limpio.csv"
done

echo "Proceso de limpieza completado."