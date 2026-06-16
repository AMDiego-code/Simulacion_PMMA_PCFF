# Simulacion_PMMA_PCFF
Documentación para simulación de polimeros usando LAMMPS y PCFF como FF, compilación de archivos de entrada y protocolos de simulación

# Generación de p100.data

Comenzamos obteniendo nuestro archivo de condiciones iniciales el cual llamamos `p100.data`.

Este archivo contiene un polímero de PMMA de 100 monómeros.

Para obtener este archivo:

1. Generamos el polímero con la herramienta **Polymer Builder** de CHARMM-GUI.
2. Esta herramienta nos dará un archivo `.zip` que contiene:
   - Un archivo `.crd` de coordenadas.
   - Un archivo `.psf` de topología y conectividad.

Una vez que obtuvimos este `.zip`, usaremos la herramienta **Force Field Converter** de CHARMM-GUI para:

1. Subir los archivos `.crd` y `.psf`.
2. Ajustar el tamaño y el tipo de caja.
3. Seleccionar el tipo de FF (podemos cargar el que sea).
4. Seleccionar el tipo de input (en nuestro caso, LAMMPS).

Al final obtendremos otro archivo `.zip`, el cual contiene un archivo `.data` en la carpeta `lammps`, el cual renombramos como `p100.data`.

A este archivo le tenemos que eliminar la siguientes secciones:

- Todas las secciones que digan `Coeffs`.
- Las sección de `Impropers`.

Ahora este archivo contiene solamente el PMMA de 100 monomeros, esto lo podemos confirmar visualizandolo en Ovito.

## Verificación de densidad

Ahora tenemos que asegurarnos de que usando el FF de PCFF logramos obtener la densidad del polímero.

Para esto usaremos los archivos:

- `p100.data`
- `minimizar.in`
- `pcff.in`

Y el software de LAMMPS.
