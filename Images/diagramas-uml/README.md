# Integración de Diagramas UML en el Documento de Tesis

## Estructura de Carpetas

```
Images/diagramas-uml/
├── casos-de-uso/        # 7 diagramas de casos de uso (PDF)
├── componentes/         # 8 diagramas de componentes técnicos (PDF)
└── secuencias/          # 5 diagramas de secuencia de flujos (PDF)
```

## Diagramas Incluidos

### Casos de Uso (7)
1. `modulo-auth.pdf` - Módulo de autenticación (login, registro, perfiles)
2. `modulo-productos.pdf` - Módulo de productos (CRUD, stock, alertas)
3. `modulo-ventas.pdf` - Módulo de ventas (POS, pagos, comprobantes)
4. `modulo-clientes.pdf` - Módulo de clientes (gestión, historial)
5. `modulo-reportes.pdf` - Módulo de reportes (dashboards, métricas)
6. `modulo-configuracion.pdf` - Módulo de configuración (usuarios, roles)
7. `modulo-categorias.pdf` - Módulo de categorías (organización jerárquica)

### Componentes (8)
1. `modulo-auth.pdf` - Arquitectura técnica del módulo de autenticación
2. `modulo-productos.pdf` - Arquitectura técnica del módulo de productos
3. `modulo-ventas.pdf` - Arquitectura técnica del módulo de ventas
4. `modulo-clientes.pdf` - Arquitectura técnica del módulo de clientes
5. `modulo-reportes.pdf` - Arquitectura técnica del módulo de reportes
6. `modulo-exportaciones.pdf` - Arquitectura técnica del módulo de exportaciones
7. `modulo-configuracion.pdf` - Arquitectura técnica del módulo de configuración
8. `modulo-categorias.pdf` - Arquitectura técnica del módulo de categorías

### Secuencias (5)
1. `flujo-venta.pdf` - Flujo completo de venta con transacción ACID
2. `flujo-autenticacion.pdf` - Flujo de login, JWT y verificación de roles
3. `flujo-gestion-productos.pdf` - Flujo de gestión de productos
4. `flujo-reporte-ventas.pdf` - Flujo de generación de reportes
5. `flujo-gestion-usuarios.pdf` - Flujo de gestión de usuarios

## Uso en LaTeX

Los diagramas están integrados en el documento mediante la sección `DISEÑO DEL SISTEMA` (`diagramas-uml-section.tex`).

**IMPORTANTE:** Los diagramas usan archivos **PDF** (no SVG) para máxima compatibilidad con LaTeX sin requerir herramientas externas como Inkscape.

### Patrones de Inserción

**Para diagramas estándar:**
```latex
\begin{figure}[htbp]
    \centering
    \includegraphics[width=0.9\textwidth]{Images/diagramas-uml/casos-de-uso/modulo-auth}
    \caption{Diagrama de Casos de Uso - Módulo de Autenticación}
    \label{fig:cu-auth}
\end{figure}
```

**Para diagramas anchos (secuencias):**
```latex
\begin{figure}[htbp]
    \centering
    \includegraphics[width=\textwidth]{Images/diagramas-uml/secuencias/flujo-venta}
    \caption{Diagrama de Secuencia - Flujo Completo de Venta}
    \label{fig:sec-venta}
\end{figure}
```

### Referencias en el Texto

Para referenciar un diagrama en el texto:
```latex
Como se muestra en la Figura \ref{fig:cu-auth}, el módulo de autenticación permite...
```

## Actualizar Diagramas

### Opción 1: Usar el script automatizado (RECOMENDADO)

```bash
# En Windows Git Bash, Linux o macOS
# Primero convierte SVG a PDF
python convert-svg-to-pdf.py

# Luego compila el documento
pdflatex upbthesis.tex
pdflatex upbthesis.tex  # Segunda vez para referencias
```

### Opción 2: Manualmente

Si editas un archivo `.puml` en `docs/diagramas-uml/`:

1. **Generar SVG nuevo:**
   - Abre el archivo en VS Code con la extensión PlantUML
   - Presiona `Alt+D` para vista previa
   - Presiona `F1` → "PlantUML: Export Current File Diagrams" → SVG

2. **Convertir a PDF:**
   ```bash
   python convert-svg-to-pdf.py
   ```

3. **Recompilar documento:**
   ```bash
   pdflatex upbthesis.tex
   ```

## Modificar Diagramas

Los diagramas originales están en formato **PlantUML** (`.puml`) en `docs/diagramas-uml/`:

### Editar un diagrama:

1. Abre el archivo `.puml` en VS Code
2. La extensión PlantUML muestra vista previa en tiempo real
3. Realiza los cambios
4. La vista previa se actualiza automáticamente

### Actualizar en el documento:

```bash
# 1. Convertir SVG a PDF
python convert-svg-to-pdf.py

# 2. Compilar documento
pdflatex upbthesis.tex
```

## Compilar el Documento

### Requisitos

**Solo necesitas:**
- MiKTeX o TeX Live (con pdflatex)
- Python 3 (para convertir SVG a PDF)
- Librerías Python: `pip install svglib reportlab`

**NO necesitas:**
- Inkscape
- shell-escape habilitado
- Paquete svg de LaTeX (ya removido)

### Compilación

```bash
# Opción 1: Usando pdflatex directamente
pdflatex upbthesis.tex
pdflatex upbthesis.tex  # Para referencias cruzadas

# Opción 2: Usando latexmk (recomendado)
latexmk -pdf upbthesis.tex
```

El documento genera un PDF de aproximadamente **104 páginas** con todos los diagramas integrados.

## Solución de Problemas

### Error: "File .pdf is missing"

**Causa:** Los archivos PDF de los diagramas no se generaron.

**Solución:**
```bash
# Generar PDFs desde SVG
python convert-svg-to-pdf.py
```

### Error: "python: command not found"

**Causa:** Python no está instalado o no está en PATH.

**Solución:**
1. Instala Python 3 desde https://python.org
2. Durante la instalación, marca "Add Python to PATH"
3. Reinicia tu terminal

### Error: "ModuleNotFoundError: No module named 'svglib'"

**Causa:** Las librerías Python no están instaladas.

**Solución:**
```bash
pip install svglib reportlab
```

### Los diagramas se ven pequeños/grandes en el PDF

**Solución:** Ajusta el `width` en el código LaTeX:

```latex
# Más pequeño
\includegraphics[width=0.7\textwidth]{...}

# Más grande
\includegraphics[width=\textwidth]{...}
```

### Los diagramas tienen mala calidad

**No debería pasar** - los PDF mantienen calidad vectorial. Si pasa:

1. Verifica que el archivo SVG original tenga buena calidad
2. Elimina el PDF viejo y regenera:
   ```bash
   rm Images/diagramas-uml/*/modulo-auth.pdf
   python convert-svg-to-pdf.py
   ```

## Proceso de Trabajo Recomendado

```
Editar .puml
     ↓
Ver vista previa en VS Code (Alt+D)
     ↓
Exportar a SVG (F1 → PlantUML: Export Current File Diagrams → SVG)
     ↓
Convertir todos los SVG a PDF (python convert-svg-to-pdf.py)
     ↓
Compilar documento (pdflatex upbthesis.tex)
     ↓
Ver resultado en upbthesis.pdf
```

## Archivos Importantes

- `diagramas-uml-section.tex` - Sección LaTeX con todos los diagramas
- `convert-svg-to-pdf.py` - Script para convertir SVG a PDF
- `Images/diagramas-uml/` - Directorio con todos los PDF de diagramas
- `docs/diagramas-uml/` - Directorio con archivos originales PlantUML

## Por qué PDF en lugar de SVG

### Problemas con SVG en LaTeX:

1. **Dependencias externas:** El paquete `svg` requiere Inkscape instalado
2. **shell-escape:** Necesita habilitar `-shell-escape` en la compilación
3. **Fragilidad:** Si Inkscape no está en PATH o versión incorrecta, falla
4. **Portabilidad:** Diferente en Windows, Linux, macOS

### Ventajas de PDF:

1. **Nativas de LaTeX:** El paquete `graphicx` maneja PDF perfectamente
2. **Sin dependencias:** No requiere herramientas externas
3. **Portabilidad:** Funciona igual en todos los sistemas
4. **Calidad:** PDF mantiene calidad vectorial como SVG
5. **Estabilidad:** No depende de versiones de software externo

## Recursos Adicionales

- **PlantUML Online:** http://www.plantuml.com/plantuml
- **Documentación PlantUML:** https://plantuml.com/es/
- **Extensión VS Code:** "PlantUML" de jebbs
- **Diagramas originales:** `docs/diagramas-uml/`

## Notas

- Los archivos **PDF** se generan automáticamente desde los **SVG** usando Python
- Los **SVG** se generan desde los **PlantUML** (.puml) usando VS Code
- Los **PlantUML** (.puml) son la fuente de verdad - edítalos para cambios
- Los archivos PDF no deben editarse manualmente (se regeneran desde SVG)
- Los SVG tampoco deben editarse manualmente (se regeneran desde PlantUML)

## Autor

Esta integración fue creada para el proyecto de tesis "Desarrollo de una Aplicación Web para la Gestión Integrada de Inventario, Ventas y Clientes en Pequeños Negocios".

**Última actualización:** 2026-02-09
**Versión:** 2.0 (PDF en lugar de SVG)
