# the data.frame we will construct our output in
df = data.frame()

# iterate over all files in our directory
flist = dir()
for (fname in flist)
{

# skip if not a CSV
    len = nchar(fname)
    dotext = substring(fname, len - 3, len)
    if (dotext != ".csv") next

# read into a new data.frame and concat it to
# our output
    newPoint = read.csv(fname)
    df = rbind(df, newPoint)
}

# finally, output the data.frame as an RData file
save(df, file = "challenge1.Rdata")
