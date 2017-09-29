#!/bin/bash

shopt -s extglob
rm !(INCAR*|KPOINTS|POSCAR|POTCAR|POSCAR-orig|run.sbatch|clean.sh|*yaml)
