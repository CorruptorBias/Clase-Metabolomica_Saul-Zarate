#Saúl Zárate Villarreal
#Metabolómica
#Tarea 1: Dataframe en R

Pelicula <- c("Anora", "The Brutalist", "Flow", "Emilia Pérez", "Wicked", 
              "Dune: Part Two", "I'm Still Here")

Premios_Oscar_2025 <- c(
  "Mejor Película, Mejor Director, Mejor Actriz, Mejor Guion Original, Mejor Montaje",
  "Mejor Actor, Mejor Fotografía, Mejor Banda Sonora",
  "Mejor Película de Animación",
  "Mejor Actriz de Reparto, Mejor Canción Original",
  "Mejor Diseño de Vestuario, Diseño de Producción",
  "Mejor Sonido, Mejores Efectos Visuales",
  "Mejor Película Internacional"
)

Mes_de_estreno <- c("Enero", "Diciembre", "Diciembre", "Mayo", 
                    "Noviembre", "Marzo", "Febrero")

Recaudacion_mundial <- c(41000000, 41400000, 728000000, 714000000, 
                         20000000, 29900000, 30000000)

peliculas_oscar <- data.frame(
  Pelicula,
  Premios_Oscar_2025,
  Mes_de_estreno,
  Recaudacion_mundial
)

print(peliculas_oscar)
