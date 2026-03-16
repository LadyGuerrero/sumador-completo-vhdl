# Sumador Completo en VHDL
**Tarea 13 — Estructura y Sintaxis Básica de un Proyecto VHDL**

## Descripción
Implementación de un Sumador Completo (Full Adder) en VHDL,
simulado con GHDL 5.1.1 en EDA Playground y verificado con EPWave.

## Archivos
| Archivo | Descripción |
|---|---|
| `src/full_adder.vhd` | Sumador Completo — arquitectura structural |
| `src/sim/testbench.vhd` | Banco de pruebas — 8 vectores de prueba |

## Ecuaciones Booleanas
- **Suma:** `S = A ⊕ B ⊕ Cin`
- **Acarreo:** `Cout = (A·B) + (B·Cin) + (A·Cin)`

## Resultados de Simulación
✅ 8/8 vectores de prueba verificados correctamente

| A | B | Cin | S | Cout |
|---|---|-----|---|------|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

## Herramientas
- **Simulador:** GHDL 5.1.1
- **Plataforma:** EDA Playground
- **Visor de ondas:** EPWave
