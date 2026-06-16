# Simulacion_PMMA_PCFF
Documentación para simulación de polimeros usando LAMMPS y PCFF como FF, compilación de archivos de entrada y protocolos de simulación

  Comenzamos obteniendo nuestro archivo de concidiciones iniciales el cual llamamos p100.data, este archivo contiene un polimero de PMMA de 100 monomeros, para oobtener este archivo primero generamos el polimero con la herramienta polymer builder de CHARMMS_GUI, este nos dará un .zip que contiene un archivo .crd de coordenadas y un .psf de topologia y conectividad.
  Una vez que obtuvimos este .zip, usaremos la herramineta force field converter de CHARMMS_GUI para subir los archivos .crd y .psf, luego ajustamos el tamaño y el tipo de caja, despues nos pedira el tipo de FF (podemos cargar el que sea), y el tipo de input (en nuestro caso LAMMPS), al final obtendremos otro archivo .zip el cual contiene nuestro p100.data en la carpeta lammps.
  A este archivo le tenemos que eliminar las secciones que contengan coeficientes, es decir todas las secciones que digan "Coeffs", y las secciones de "impropers", ahora este archivo contiene solamente el PMMA de 100 monomeros, lo podemos visualizar en Ovito y podemos simular este polimero con los coeficientes del PCFF.
  AHora tenemos que asegurarnos de que usando el FF de PCFF logramos obtener la densidad del polimero, para esto usaremos los archivos p100.data, minimizar.in y pcff.in 
