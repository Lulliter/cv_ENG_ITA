# SAVING LATEST MANUALLY IN JOB FOLDER
library (here)
library(fs)

# outdated because new website takes from here on its own
here::here()

# ObjectiFY SubDirs	
from.dir <- here::here()
fs::path_abs(from.dir)

# sporca ma OK!
to.dir <- "/Users/luisamimmi/Documents/04_JOB/04_1_JobAppli" # "/Users/luisamimmi/GoogleDrive/source/content/cv",
fs::path_abs(to.dir)

# List Files RES 
files_RES <- list.files(path = from.dir, 
                        pattern = glob2rx("*awesome_RES*pdf") , #c ('^awesome_RES', '\\.pdf$'),
                        full.names = TRUE, # If TRUE, the directory path is prepended to the file names 
                        recursive = FALSE) # Should the listing recurse into directories?

# List Files LONG CV  	
files_CV <- list.files(path = from.dir, 
                       pattern = glob2rx("*awesome_long*pdf") , #c ('^awesome_RES', '\\.pdf$'),
                       full.names = TRUE, # If TRUE, the directory path is prepended to the file names 
                       recursive = FALSE) # Should the listing recurse into directories?

# function to MOVE
for (f in files_RES) file.copy(from = f, to = to.dir,	 overwrite = T, copy.date = T)
for (f in files_CV) file.copy(from = f, to = to.dir,	 overwrite = T, copy.date = T)
