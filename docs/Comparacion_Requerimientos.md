# COMPARACIÓN DE REQUERIMIENTOS FUNCIONALES

## Tabla Comparativa: Data Sets vs upbthesis.tex

| Código | Nombre del Requerimiento                               | Data Set A | Data Set B | En upbthesis.tex | Prioridad | Módulo             |
| ------ | ------------------------------------------------------ | ---------- | ---------- | ---------------- | --------- | ------------------ |
| RF01   | Autenticación y control de sesión                      | ❌         | ✅         | ✅               | Alta      | Seguridad y Acceso |
| RF02   | Gestión del catálogo de productos                      | ❌         | ✅         | ✅               | Alta      | Inventario         |
| RF03   | Registro de movimientos de inventario                  | ❌         | ✅         | ✅               | Alta      | Inventario         |
| RF04   | Alertas de stock bajo y umbral mínimo                  | ❌         | ✅         | ✅               | Media     | Inventario         |
| RF05   | Procesamiento de venta en tiempo real                  | ❌         | ✅         | ✅               | Alta      | Ventas / POS       |
| RF06   | Gestión de métodos de pago y cálculo de cambio         | ❌         | ✅         | ✅               | Alta      | Ventas / POS       |
| RF07   | Actualización automática de stock por venta            | ❌         | ✅         | ✅               | Alta      | Ventas / POS       |
| RF08   | Emisión de comprobantes de venta                       | ❌         | ✅         | ✅               | Media     | Ventas / POS       |
| RF09   | Gestión de anulaciones y devoluciones                  | ❌         | ✅         | ✅               | Media     | Ventas / POS       |
| RF10   | Gestión del directorio de clientes                     | ❌         | ✅         | ✅               | Media     | Clientes           |
| RF11   | Consulta de historial de compras por cliente           | ❌         | ✅         | ✅               | Media     | Clientes           |
| RF12   | Dashboard de indicadores y reporte histórico filtrable | ❌         | ✅         | ✅               | Media     | Reportes           |
| RF13   | Gestión de categorías de productos                     | ✅         | ❌         | ✅               | Media     | Inventario         |
| RF14   | Gestión de imágenes de productos                       | ✅         | ❌         | ✅               | Media     | Inventario         |
| RF15   | Búsqueda y filtrado avanzado de productos              | ✅         | ❌         | ✅               | Alta      | Inventario         |
| RF16   | Aplicación de descuentos en ventas                     | ✅         | ❌         | ✅               | Alta      | Ventas / POS       |
| RF17   | Gestión del carrito de compras temporal                | ✅         | ❌         | ✅               | Alta      | Ventas / POS       |
| RF18   | Consulta de ventas por rango de fechas                 | ✅         | ❌         | ✅               | Media     | Ventas / POS       |
| RF19   | Registro de múltiples contactos por cliente            | ✅         | ❌         | ✅               | Baja      | Clientes           |
| RF20   | Segmentación de clientes por criterios                 | ✅         | ❌         | ✅               | Baja      | Clientes           |
| RF21   | Reporte de productos más vendidos                      | ✅         | ❌         | ✅               | Media     | Reportes           |
| RF22   | Análisis de rentabilidad por producto                  | ✅         | ❌         | ✅               | Media     | Reportes           |
| RF23   | Reporte de ventas por método de pago                   | ✅         | ❌         | ✅               | Baja      | Reportes           |
| RF24   | Reporte de movimientos de inventario                   | ✅         | ❌         | ✅               | Media     | Reportes           |

## Resumen Estadístico

### Por Origen

| Origen                 | Cantidad | Porcentaje |
| ---------------------- | -------- | ---------- |
| Data Set A (RF13-RF24) | 12       | 50%        |
| Data Set B (RF01-RF12) | 12       | 50%        |
| **Total**              | **24**   | **100%**   |

### Por Módulo

| Módulo                 | Cantidad de RFs | Códigos                                        |
| ---------------------- | --------------- | ---------------------------------------------- |
| **Seguridad y Acceso** | 1               | RF01                                           |
| **Inventario**         | 6               | RF02, RF03, RF04, RF13, RF14, RF15             |
| **Ventas / POS**       | 9               | RF05, RF06, RF07, RF08, RF09, RF16, RF17, RF18 |
| **Clientes**           | 4               | RF10, RF11, RF19, RF20                         |
| **Reportes**           | 5               | RF12, RF21, RF22, RF23, RF24                   |

### Por Prioridad

| Prioridad | Cantidad | Porcentaje | Códigos                                                                |
| --------- | -------- | ---------- | ---------------------------------------------------------------------- |
| **Alta**  | 9        | 37.5%      | RF01, RF02, RF03, RF05, RF06, RF07, RF15, RF16, RF17                   |
| **Media** | 11       | 45.8%      | RF04, RF08, RF09, RF10, RF11, RF12, RF13, RF14, RF18, RF21, RF22, RF24 |
| **Baja**  | 4        | 16.7%      | RF19, RF20, RF23                                                       |

### Por Estado en upbthesis.tex

| Estado        | Cantidad | Porcentaje |
| ------------- | -------- | ---------- |
| ✅ Integrados | 24       | 100%       |
| ❌ Pendientes | 0        | 0%         |

## Análisis de Cobertura

### Data Set A (Requerimientos Nuevos - RF13 a RF24)

- **Total**: 12 requerimientos
- **Estado**: Todos integrados en upbthesis.tex ✅
- **Aporte principal**: Funcionalidades avanzadas de inventario, ventas, clientes y reportes
- **Destacados**:
  - Gestión de categorías e imágenes de productos
  - Sistema de descuentos y carrito de compras
  - Reportes analíticos y de rentabilidad
  - Segmentación de clientes

### Data Set B (Requerimientos Base - RF01 a RF12)

- **Total**: 12 requerimientos
- **Estado**: Todos integrados en upbthesis.tex ✅
- **Aporte principal**: Funcionalidades core del sistema
- **Destacados**:
  - Autenticación y seguridad
  - CRUD básico de productos e inventario
  - Proceso de venta completo
  - Gestión básica de clientes
  - Dashboard ejecutivo

## Notas Importantes

1. **Completitud**: Todos los requerimientos de ambos data sets (A y B) están ahora integrados en el documento de tesis.

2. **Numeración**: Los requerimientos están numerados consecutivamente del RF01 al RF24, sin saltos ni duplicados.

3. **Formato**: Todos los requerimientos mantienen el mismo formato de tabla LaTeX con estructura consistente.

4. **Organización**: Aunque los data sets tenían organizaciones diferentes, en upbthesis.tex están organizados numéricamente de forma consecutiva.

5. **Balance**: Existe un balance equilibrado entre:
   - Requerimientos de prioridad alta (37.5%) para funcionalidades críticas
   - Requerimientos de prioridad media (45.8%) para funcionalidades importantes
   - Requerimientos de prioridad baja (16.7%) para funcionalidades complementarias

## Conclusión

El documento `upbthesis.tex` contiene ahora una especificación completa de 24 requerimientos funcionales que cubren todos los aspectos del sistema:

- ✅ Seguridad y control de acceso
- ✅ Gestión completa de inventario
- ✅ Punto de venta (POS) robusto
- ✅ Administración de clientes
- ✅ Reportes y análisis empresarial

La fusión de ambos data sets proporciona una cobertura integral de las necesidades funcionales del sistema.
