# Charged electron entropy calculations

To generate data in this folder, run two different python
files. First, run:

	$ python getEntropy.py

This will generate two files: `entropy2H.dat` and `entropyTp.dat`,
which correspond to the electron entropies of 2H and 1T' phase at a
range of temperatures and excess charges.

Next, run:

	$ python getTdS_TV.py
	
	
This will use `entropy2H.dat` and `entropyTp.dat` to generate two new
files: `TS.dat`, `TdS.dat` and `TV.dat`. These files represent the
values of temperature and entropy (`TS.dat`), temperature and entropy
difference (`TdS.dat`), and temperature and voltage (`TV.dat`) along
the 2H-1T' phase boundary.

