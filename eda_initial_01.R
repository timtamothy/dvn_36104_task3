library(tidyverse)
library(here)
library(DataExplorer)
library(funModeling)
library(Hmisc)

# Load the data

df1 <- read_csv(here("1 May to 15 May 2014.csv"))

# View data

str(df1)

View(df1)

# EDA Function

basic_eda <- function(data)
{
  glimpse(data)
  print(status(data))
  freq(data)
  print(profiling_num(data))
  plot_num(data)
  describe(data)
}

basic_eda(df1)


property_d <- read_csv(here("Property Details List.xls"))