The data are the lower-division Physics course offerings in S25 at UCM.
It is sourced from the Registrar's course schedule. Meeting day (e.g.
MW, TR) is not included.

They are given as single data points in individual CSV files, named
thusly:

    datapt_NN.csv

The script `merge.R', when executed, will concatenate them all into one
data frame `df', and export into the file `challenge1.Rdata'.
