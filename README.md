# Framework de Análisis de Datos
Basado en Google Data Analytics + Posit Cloud + R

Este análisis contiene información referente a fenómenos que pueden ser impactes para algunas personas.

Introducción al dataset
Cada fila del dataset representa un grupo de personas en un rago de edad, en un país, de un sexo y en un año específico.
El dataset tiene una serie de columnas que definiremos a cntinuación:
- country: País donde se registraron.
- year: Año en el cual registraron los datos entre 1985 y 2016
- sex: Sexo al que corresponde entre hombre y mujer.
- age: Rango de edad al que corresponde el numero de eventos.
- suicides_no: Cantidad de eventos registrados para ese país, año, sexo y rango de edad específicos.
- population: El número total de personas vivas que existían en ese país, año, sexo y rango de edad específicos.
- suicides/100k pop: (Tasa por cada 100 mil habitantes): Indica cuántos eventos ocurrieron por cada 100,000 personas de ese grupo específico. Esta es la variable más importante para comparar, ya que elimina el sesgo del tamaño de la población entre países.
- country-year: (País-Año): Una columna combinada que junta el nombre del país y el año (ej. Albania1987). Sirve principalmente como una clave o identificador único para filtrar.
- HDI for year: (Índice de Desarrollo Humano - IDH): Es una nota del 0 al 1 que da la ONU. Mide la calidad de vida combinando tres factores: riqueza (PIB), educación (alfabetización/escolaridad) y salud (esperanza de vida).
- gdp_for_year ($): (PIB anual): El Producto Interno Bruto total del país en ese año, expresado en dólares estadounidenses.

El suicidio constituye un problema de salud pública que afecta a diferentes países, a todas las poblaciones independiente del genero, incluso de la edad, como lo podremos evidenciar en el dataset que vamos a analizar.
¿Qué patrones demográficos, temporales y socioeconómicos estuvieron asociados a las variaciones en las tasas de suicidio registradas entre 1985 y 2016 en los países incluidos en el dataset?

Objetivo General
Analizar la evolución de las tasas de suicidio registradas entre 1985 y 2016 en los países incluidos en el dataset, evaluando diferencias por sexo, grupo etario y variables socioeconómicas (IDH y PIB), con el fin de identificar patrones demográficos y económicos asociados a una mayor o menor incidencia del fenómeno.

Objetivos Específicos
Determinar cuáles fueron los países que registraron las tasas promedio de suicidio más altas y más bajas durante el período 1985-2016.
Evaluar la evolución temporal de las tasas de suicidio entre 1985 y 2016 para identificar tendencias crecientes, decrecientes o estables.
Comparar las tasas promedio de suicidio entre hombres y mujeres durante todo el período analizado.
Identificar cuáles grupos etarios presentaron las mayores tasas de suicidio y analizar cómo dichas tasas variaron a través del tiempo.
Examinar la relación existente entre el Índice de Desarrollo Humano (IDH) y las tasas de suicidio en los países incluidos.
Examinar la relación entre el Producto Interno Bruto (PIB) y las tasas de suicidio registradas.
Identificar posibles patrones comunes entre los países con mayores tasas históricas de suicidio.

ASK
El suicidio constituye un problema de salud pública global que afecta a diferentes países, grupos etarios y géneros de manera desigual.
Comprender cómo han evolucionado las tasas de suicidio entre 1985 y 2016 puede ayudar a identificar patrones demográficos, sociales y económicos asociados al fenómeno.

¿Cómo variaron las tasas promedio de suicidio por cada 100.000 habitantes (suicides/100k pop) en los países incluidos en el dataset durante el período comprendido entre 1985 y 2016, y cuáles fueron los años con los mayores y menores niveles registrados?
¿Cuál fue la diferencia promedio en las tasas de suicidio por cada 100.000 habitantes entre hombres y mujeres durante el período 1985-2016, y cómo evolucionó dicha diferencia a lo largo del tiempo?
¿Qué grupos etarios registraron las tasas promedio de suicidio más elevadas entre 1985 y 2016 y cómo se comportaron dichas tasas en cada década analizada?
--¿Cómo cambiaron las tasas de suicidio en cada grupo etario entre el inicio del período (1985) y el final del período (2016)?
¿Cuáles fueron los diez países con las tasas promedio de suicidio más altas y más bajas durante el período 1985-2016 y qué tan consistentes fueron dichas tasas a lo largo del tiempo?
¿Existe una relación estadísticamente observable entre el Índice de Desarrollo Humano (IDH) y las tasas de suicidio registradas entre 1985 y 2016 en los países con información disponible?
¿Qué relación existe entre el Producto Interno Bruto anual de un país y las tasas de suicidio registradas durante el período analizado?
¿Qué combinación de país, sexo y grupo etario presentó las tasas promedio de suicidio más elevadas durante el período 1985-2016?
