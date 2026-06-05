library(janitor)
suicide <- clean_names(suicide)
names(suicide)
#En prepare vimos que gpd_per_year es chr, verificamos y cambiamos
class(suicide$gdp_for_year)
suicide$gdp_for_year <- as.numeric(
  gsub(",", "", suicide$gdp_for_year)
)
#Ahora debe ser numerica
class(suicide$gdp_for_year)

#Vimos también que la falta de datos en idh es muy alta, y eliminar las filas no es viable
sum(is.na(suicide$hdi_for_year))
mean(is.na(suicide$hdi_for_year))*100
suicide_hdi <- suicide %>%
  drop_na(hdi_for_year)
#hdi sólo afecta a una pregunta, pero aún así no podemos eliminar.

#Duplicados
sum(duplicated(suicide))
#En caso de encontrar
#suicide <- distinct(suicide)
#Categrorias
table(suicide$sex)
table(suicide$age)
table(suicide$generation)