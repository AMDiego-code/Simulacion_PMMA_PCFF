#!/bin/bash 
###Script_Prueba_Jobs###

#BSUB -q q_hpc
#BSUB -n 16
#BSUB -oo salida
#BSUB --eo error 

mpirun /tmpu/fcoao_g/dam_a/lammps/lammps-22Jul2025/src/lmp_mpi -in minimizar_100.in 
