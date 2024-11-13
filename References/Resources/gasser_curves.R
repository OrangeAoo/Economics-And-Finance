

library(mbbefd)
library(tidyverse)

step <- 0.01

exp_curves <- data.frame(
  LER = seq(0, 1, step)
)

exp_curves <- exp_curves |> 
  mutate(
    Y1 = ecMBBEFD(LER, swissRe(1.5)[2], swissRe(1.5)[1]),
    Y2 = ecMBBEFD(LER, swissRe(2)[2],   swissRe(2)[1]),
    Y3 = ecMBBEFD(LER, swissRe(3)[2],   swissRe(3)[1]),
    Y4 = ecMBBEFD(LER, swissRe(4)[2],   swissRe(4)[1])
    )

