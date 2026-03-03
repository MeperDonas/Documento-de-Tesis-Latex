#!/usr/bin/env python3
"""
Script para convertir todos los diagramas SVG a PDF para LaTeX
"""

import os
import sys
from pathlib import Path

try:
    from svglib.svglib import svg2rlg
    from reportlab.graphics import renderPDF
except ImportError:
    print("Error: Librerías no instaladas")
    print("Ejecuta: pip install svglib reportlab")
    sys.exit(1)


def convert_svg_to_pdf(svg_path, pdf_path):
    """Convierte un archivo SVG a PDF"""
    try:
        # Cargar el SVG
        drawing = svg2rlg(str(svg_path))
        if drawing is None:
            print(f"  [!] Error al cargar: {svg_path}")
            return False

        # Renderizar a PDF
        renderPDF.drawToFile(drawing, str(pdf_path))
        print(f"  [OK] {svg_path.name} -> {pdf_path.name}")
        return True
    except Exception as e:
        print(f"  [!] Error al convertir {svg_path.name}: {e}")
        return False


def main():
    # Directorios base
    base_dir = Path("Images/diagramas-uml")
    directories = ["casos-de-uso", "componentes", "secuencias"]

    print("Iniciando conversion de SVG a PDF...")
    print()

    total_converted = 0
    total_failed = 0

    for dir_name in directories:
        dir_path = base_dir / dir_name

        if not dir_path.exists():
            print(f"[!] Directorio no encontrado: {dir_path}")
            continue

        print(f"[DIR] Procesando: {dir_name}/")
        svg_files = list(dir_path.glob("*.svg"))

        if not svg_files:
            print(f"  [!] No hay archivos SVG")
            continue

        for svg_file in svg_files:
            pdf_file = svg_file.with_suffix(".pdf")
            if convert_svg_to_pdf(svg_file, pdf_file):
                total_converted += 1
            else:
                total_failed += 1

        print()

    print("=" * 50)
    print(f"[OK] Convertidos: {total_converted}")
    print(f"[XX] Fallidos:   {total_failed}")
    print(f"[--] Total:      {total_converted + total_failed}")
    print("=" * 50)

    if total_failed > 0:
        sys.exit(1)


if __name__ == "__main__":
    main()
