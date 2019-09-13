########### READING IN DATAFRAMES
download.file("http://bit.ly/ecolidata", "data/Ecoli_metadata.csv")
read.csv("data/Ecoli_metadata.csv")

#save the df under a variable name
ecoli <- read.csv("data/Ecoli_metadata.csv")
  

########### VIEWING DATAFRAMES
dim(ecoli)
colnames(ecoli)
summary(ecoli)
nrow()
ncol()

x = nrow(ecoli)
range = 1:x

########### SLICING DATAFRAMES BY POSISTION
ecoli[1, 2]   # 1st element in the 2nd column 
ecoli[5, 4] #5th element in the 4th column
ecoli[1:3, 7] # First three elements in the 7th column
ecoli[3, ]    # 3rd element for all columns
ecoli[, 7]    # Entire 7th column

########## SUBSETTING DATAFRAMES BY VALUES
ecoli[ecoli$genome_size > 2]
ecoli$genome_size[ecoli$genome_size >2]

########## SUBSETTING DFs BY COLUMN NAMES
ecoli$strain
ecoli[, c("strain", "clade")]
ecoli[4:7, c("strain", "clade")]






