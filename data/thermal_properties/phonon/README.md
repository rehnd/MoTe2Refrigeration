# Phonon thermal properties

This folder includes all phonon-related input files needed to compute:

- Phonon Density of states
- Phonon free energy, entropy, and heat capacity

for both 2H- and 1T'-MoTe2.

The thermal properties are computed using a 2x2x1 supercell from the
relaxed orthorhombic (2 f.u.) unit cells of 2H- and 1T'-MoTe2. The
supercell is specified in `POSCAR`, while the original 2 f.u. cell is
specified in `POSCAR-original`.

## Instructions for generating thermal data

The instructions below apply to both folders `2H` and `1Tp`

### 0. Run VASP
VASP requires as input `INCAR`, `KPOINTS`, `POSCAR`, and `POTCAR`
files. Due to legal issues, we cannot provide the `POTCAR` files,
which contain the pseudopotentials; however we note that PBE
pseudopotentials are used for all calculations.  The `run.sbatch` file
provides an example `slurm` script that runs the jobs. These phonon
calculations are very expensive. On a cluster with 8-core (plus
hyperthreading) Intel Xeon Phi's and Infiniband, the 2x2x1 unit cell
with spin orbit coupling takes around 48 hours to run on 32 nodes (256
total cores).

### 1. Generating `FORCE_CONSTANTS`

To compute any thermal properties, you must first generate a
`FORCE_CONSTANTS` file, which is computed from the `vasprun.xml`
output of VASP. Run the following to generate:

``` bash
$ phonopy --fc vasprun.xml
```

### 2. Plotting the phonon density of states (PDOS)

You should now see a `FORCE_CONSTANTS` file in either the `2H` or
`1Tp` directory.  To generate a plot of PDOS, run the following:

``` bash
$ phonopy -p --readfc mesh.conf
```

This will automatically generate a plot and a file called
`total_dos.dat` with the data used to make the plot.

### 3. Generating free energy, entropy, and heat capacity data

To get these properties and save to a file called `thermal.dat`, run
the following:

``` bash
$ phonopy -p -t --readfc mesh.conf > thermal.dat
```

This will automatically generate a plot, `thermal_properties.yaml`, `phonopy.yaml`,
and `thermal.dat`, where the last of these comes from the terminal
output being redirected.
