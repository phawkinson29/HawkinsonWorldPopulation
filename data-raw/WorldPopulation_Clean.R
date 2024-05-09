library(tidyverse)
library(readxl)


WorldPopulation <- World_Population_File %>%
  rename(Country = 'Region, subregion, country or area *') %>%
  select( 3, 8:78 ) %>%
  slice(27:46, 48:56, 58:62, 64:80, 83:89, 91:108,
        111:115, 117:125, 128:135, 137:147, 150:177,
        179:186, 188:201, 203:204, 203:204, 207:211,
        213:219, 221:229, 233:242, 244:256, 258:273,
        258:273, 225:283, 285:289) %>%
  slice(1:244, 248:303)

usethis::use_data(WorldPopulation, overwrite = TRUE)
