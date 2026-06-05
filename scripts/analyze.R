#¿Cómo variaron las tasas promedio de suicidio entre 1985 y 2016?
trend_year <- suicide %>%
  group_by(year) %>%
  summarise(
    avg_rate = mean(suicides_100k_pop)
  )
ggplot(trend_year,
       aes(year, avg_rate))+
  geom_line()

#¿Cuál fue la diferencia entre hombres y mujeres?
gender_analysis <- suicide %>%
  group_by(sex) %>%
  summarise(
    avg_rate = mean(suicides_100k_pop)
  )
ggplot(gender_analysis,
       aes(sex,
           avg_rate,
           fill=sex))+
  geom_col()

#¿Qué grupos etarios presentan mayores tasas?
age_analysis <- suicide %>%
  group_by(age) %>%
  summarise(
    avg_rate = mean(suicides_100k_pop)
  )
suicide$age <- factor(
  suicide$age,
  levels = c(
    "5-14 years",
    "15-24 years",
    "25-34 years",
    "35-54 years",
    "55-74 years",
    "75+ years"
  )
)
ggplot(age_analysis,
       aes(age,
           avg_rate))+
  geom_col()

#¿Qué países presentan las tasas más altas y más bajas?
country_analysis <- suicide %>%
  group_by(country) %>%
  summarise(
    avg_rate = mean(suicides_100k_pop),
    median_rate = median(suicides_100k_pop),
    max_rate = max(suicides_100k_pop),
    min_rate = min(suicides_100k_pop),
    sd_rate = sd(suicides_100k_pop)
  )
country_analysis <- country_analysis %>%
  arrange(desc(avg_rate))

#¿Existe relación entre desarrollo humano y suicidio?
suicide_hdi
ggplot(
  suicide_hdi,
  aes(hdi_for_year,
      suicides_100k_pop)
)+
  geom_point()+
  geom_smooth(method="lm")
cor(
  suicide_hdi$hdi_for_year,
  suicide_hdi$suicides_100k_pop
)
#¿Qué combinación de país, sexo y edad presenta mayor riesgo?
risk_profile <- suicide %>%
  group_by(
    country,
    sex,
    age
  ) %>%
  summarise(
    avg_rate = mean(suicides_100k_pop)
  ) %>%
  arrange(desc(avg_rate))
head(risk_profile,10)


cor(
  suicide_hdi$hdi_for_year,
  suicide_hdi$suicides_100k_pop
)
