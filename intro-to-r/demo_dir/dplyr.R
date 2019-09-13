######### INSTALL THE DPYLR PACKAGE
install.packages("dpylr")
library(dplyr)

######## SELECT
select(ecoli, sample, clade, cit, genome_size)

######## FILTER
filter(ecoli, cit == "plus")

#Can you guess how to add a second (AND) filter?
#What about an OR filter?

#how would you filter the ecoli data to include only samples with a genome size greater than
#or equal to 4.7?
#how many samples meet this requirement?

######## TIDYVERSE "PIPES"
ecoli %>%
  filter(cit == "plus") %>%
  select(sample, generation, clade)

#how would you turn this output into a variable?

######### GROUP
ecoli %>%
  group_by(cit) %>%
  summarise(n())

ecoli %>%
  group_by(cit) %>%
  summarize(mean_size = mean(genome_size, na.rm = TRUE))

######### MUTATE 
ecoli %>%
  mutate(genome_bp = genome_size *1e6)

