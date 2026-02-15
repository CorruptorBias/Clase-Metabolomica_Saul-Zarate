#Analisis PCR 

install.packages("pacman")

library("pacman")

p_load("vroom", #llamar bases de datos
       "dplyr", #facilita el manejo de datos
       "ggplot2") #graficar

Datos_PCR <- 
  vroom(file="https://raw.githubusercontent.com/ManuelLaraMVZ/resultados_PCR_practica/refs/heads/main/Genes.csv")

Datos_PCR

Gen_ref<- Datos_PCR %>% 
  filter(Gen == "B-actina")
Gen_ref

Gen_int<- Datos_PCR %>% 
  filter(Gen != "B-actina")

Gen_int

DCT <- Gen_int %>% 
  mutate(DCTC1 = C1 -Gen_ref$C1,
         DCTC2 = C2 -Gen_ref$C2,
         DCTC3 = C3 -Gen_ref$C3,
         DCTT1 = T1 -Gen_ref$T1,
         DCTT1 = T2 -Gen_ref$T2,
         DCTT3 = T3 -Gen_ref$T3,
         )

DCT
