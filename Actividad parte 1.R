
#Saúl:
# Ejercicio curvas de amplificación

install.packages("pacman")

library("pacman")

p_load("vroom", #llamar bases de datos
       "dplyr", #facilita el manejo de datos
       "ggplot2") #graficar

Garu <- vroom(file = "https://raw.githubusercontent.com/ManuelLaraMVZ/resultados_PCR_practica/refs/heads/main/Amplif_grupo1_17022025.csv")

head(Garu)

Datos <- Garu %>%  # %>% significa que a la base de datos anterior haremos lo siguiente
  select("Cycle","F1")

Datos

Grafica <- ggplot(Datos,
                  mapping = aes(x=Cycle,
                                y= F1))+
    geom_line(color= "#54C4FF",
              size = 1.5)+
  labs(x="Ciclos",
       y = "Fluorescencia",
       title = "Grafica de amplificacion RT-qPCR",
       subtitle ="Muestra F1",
       caption = "Diseno: Saul Zarate")+
  geom_point(color = "#1270DB")+
  theme_classic()
Grafica

