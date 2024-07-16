# Proyecto de Limpieza Automatizada de Datos CSV

## Descripción
Este proyecto contiene un script de shell que automatiza la limpieza y preprocesamiento de archivos CSV. El script realiza las siguientes tareas:
- Elimina espacios en blanco al inicio de cada línea
- Elimina líneas vacías
- Reemplaza campos vacíos con 'N/A'

## Requisitos
- Sistema operativo basado en Unix (Linux, macOS) o Windows con Git Bash
- Bash shell

## Estructura del Proyecto
limpieza_datos/
    datos_entrada/
        datos1.csv
        datos2.csv
    datos_procesados/
    limpiar_datos.sh
    README.md

## Uso
1. Coloca tus archivos CSV en la carpeta `datos_entrada/`
2. Ejecuta el script desde la terminal:
./limpiar_datos.sh
3. Los archivos procesados se guardarán en la carpeta `datos_procesados/`

## Detalles del Script

Copy3. Los archivos procesados se guardarán en la carpeta `datos_procesados/`

## Detalles del Script
El script `limpiar_datos.sh` realiza las siguientes operaciones:
1. Lee cada archivo CSV en el directorio de entrada
2. Elimina espacios en blanco al inicio de cada línea
3. Elimina líneas vacías
4. Reemplaza campos vacíos con 'N/A'
5. Guarda el archivo procesado en el directorio de salida

## Contribuciones
Las sugerencias y contribuciones son bienvenidas. Por favor, abre un issue o un pull request para proponer cambios.

