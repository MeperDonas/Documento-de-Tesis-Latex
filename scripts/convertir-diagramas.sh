#!/bin/bash

# Script para convertir todos los diagramas PlantUML a SVG
# Uso: ./convertir-diagramas.sh

echo "Iniciando conversión de diagramas PlantUML a SVG..."

# Directorios
SOURCE_DIR="docs/diagramas-uml"
OUTPUT_BASE="Images/diagramas-uml"

# Verificar que PlantUML JAR existe
if [ ! -f "plantuml.jar" ]; then
    echo "Error: No se encontró plantuml.jar"
    echo "Descargando plantuml.jar..."
    curl -L -o plantuml.jar https://github.com/plantuml/plantuml/releases/download/v1.2024.8/plantuml-1.2024.8.jar
fi

# Convertir casos de uso
echo "Convirtiendo casos de uso..."
java -jar plantuml.jar -tsvg -charset UTF-8 "$SOURCE_DIR/casos-de-uso/" -o "$SOURCE_DIR/casos-de-uso/"
cp "$SOURCE_DIR/casos-de-uso/Images/diagramas-uml/casos-de-uso/"*.svg "$OUTPUT_BASE/casos-de-uso/" 2>/dev/null

# Convertir componentes
echo "Convirtiendo componentes..."
java -jar plantuml.jar -tsvg -charset UTF-8 "$SOURCE_DIR/componentes/" -o "$SOURCE_DIR/componentes/"
cp "$SOURCE_DIR/componentes/Images/diagramas-uml/componentes/"*.svg "$OUTPUT_BASE/componentes/" 2>/dev/null

# Convertir secuencias
echo "Convirtiendo secuencias..."
java -jar plantuml.jar -tsvg -charset UTF-8 "$SOURCE_DIR/secuencias/" -o "$SOURCE_DIR/secuencias/"
cp "$SOURCE_DIR/secuencias/Images/diagramas-uml/secuencias/"*.svg "$OUTPUT_BASE/secuencias/" 2>/dev/null

echo "Conversión completada!"
echo ""
echo "Archivos generados:"
echo "  - Casos de uso: $(ls -1 $OUTPUT_BASE/casos-de-uso/*.svg 2>/dev/null | wc -l) archivos"
echo "  - Componentes: $(ls -1 $OUTPUT_BASE/componentes/*.svg 2>/dev/null | wc -l) archivos"
echo "  - Secuencias: $(ls -1 $OUTPUT_BASE/secuencias/*.svg 2>/dev/null | wc -l) archivos"
