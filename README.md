# 📊 Framework de Análisis de Datos

### Basado en Google Data Analytics + Posit Cloud + R

> ⚠️ **Advertencia de contenido**
>
> Este análisis contiene información referente a fenómenos que pueden ser impactantes para algunas personas.

---

# 📖 Introducción al Dataset

Cada fila del dataset representa un grupo de personas en un rango de edad, en un país, de un sexo y en un año específico.

El dataset tiene una serie de columnas que definiremos a continuación:

| Variable          | Descripción                                                                                                                                                                                                                               |
| ----------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| country           | País donde se registraron.                                                                                                                                                                                                                |
| year              | Año en el cual registraron los datos entre 1985 y 2016.                                                                                                                                                                                   |
| sex               | Sexo al que corresponde entre hombre y mujer.                                                                                                                                                                                             |
| age               | Rango de edad al que corresponde el número de eventos.                                                                                                                                                                                    |
| suicides_no       | Cantidad de eventos registrados para ese país, año, sexo y rango de edad específicos.                                                                                                                                                     |
| population        | El número total de personas vivas que existían en ese país, año, sexo y rango de edad específicos.                                                                                                                                        |
| suicides/100k pop | Tasa por cada 100 mil habitantes. Indica cuántos eventos ocurrieron por cada 100.000 personas de ese grupo específico. Esta es la variable más importante para comparar, ya que elimina el sesgo del tamaño de la población entre países. |
| country-year      | Columna combinada que junta el nombre del país y el año (ej. Albania1987). Sirve principalmente como una clave o identificador único para filtrar.                                                                                        |
| HDI for year      | Índice de Desarrollo Humano (IDH). Es una nota del 0 al 1 que da la ONU. Mide la calidad de vida combinando riqueza (PIB), educación y salud.                                                                                             |
| gdp_for_year ($)  | Producto Interno Bruto total del país en ese año, expresado en dólares estadounidenses.                                                                                                                                                   |

---

El suicidio constituye un problema de salud pública que afecta a diferentes países, a todas las poblaciones independiente del género, incluso de la edad, como lo podremos evidenciar en el dataset que vamos a analizar.

## ❓ Pregunta de Investigación

**¿Qué patrones demográficos, temporales y socioeconómicos estuvieron asociados a las variaciones en las tasas de suicidio registradas entre 1985 y 2016 en los países incluidos en el dataset?**

---

# 🎯 Objetivo General

Analizar la evolución de las tasas de suicidio registradas entre 1985 y 2016 en los países incluidos en el dataset, evaluando diferencias por sexo, grupo etario y variables socioeconómicas (IDH y PIB), con el fin de identificar patrones demográficos y económicos asociados a una mayor o menor incidencia del fenómeno.

---

# 📌 Objetivos Específicos

* Determinar cuáles fueron los países que registraron las tasas promedio de suicidio más altas y más bajas durante el período 1985-2016.
* Evaluar la evolución temporal de las tasas de suicidio entre 1985 y 2016 para identificar tendencias crecientes, decrecientes o estables.
* Comparar las tasas promedio de suicidio entre hombres y mujeres durante todo el período analizado.
* Identificar cuáles grupos etarios presentaron las mayores tasas de suicidio y analizar cómo dichas tasas variaron a través del tiempo.
* Examinar la relación existente entre el Índice de Desarrollo Humano (IDH) y las tasas de suicidio en los países incluidos.
* Examinar la relación entre el Producto Interno Bruto (PIB) y las tasas de suicidio registradas.
* Identificar posibles patrones comunes entre los países con mayores tasas históricas de suicidio.

---

# 🧠 ASK

El suicidio constituye un problema de salud pública global que afecta a diferentes países, grupos etarios y géneros de manera desigual.

Comprender cómo han evolucionado las tasas de suicidio entre 1985 y 2016 puede ayudar a identificar patrones demográficos, sociales y económicos asociados al fenómeno.

## Preguntas SMART

1. ¿Cómo variaron las tasas promedio de suicidio por cada 100.000 habitantes (suicides/100k pop) en los países incluidos en el dataset durante el período comprendido entre 1985 y 2016, y cuáles fueron los años con los mayores y menores niveles registrados?

2. ¿Cuál fue la diferencia promedio en las tasas de suicidio por cada 100.000 habitantes entre hombres y mujeres durante el período 1985-2016, y cómo evolucionó dicha diferencia a lo largo del tiempo?

3. ¿Qué grupos etarios registraron las tasas promedio de suicidio más elevadas entre 1985 y 2016 y cómo se comportaron dichas tasas en cada década analizada?

4. ¿Cómo cambiaron las tasas de suicidio en cada grupo etario entre el inicio del período (1985) y el final del período (2016)?

5. ¿Cuáles fueron los diez países con las tasas promedio de suicidio más altas y más bajas durante el período 1985-2016 y qué tan consistentes fueron dichas tasas a lo largo del tiempo?

6. ¿Existe una relación estadísticamente observable entre el Índice de Desarrollo Humano (IDH) y las tasas de suicidio registradas entre 1985 y 2016 en los países con información disponible?

7. ¿Qué relación existe entre el Producto Interno Bruto anual de un país y las tasas de suicidio registradas durante el período analizado?

8. ¿Qué combinación de país, sexo y grupo etario presentó las tasas promedio de suicidio más elevadas durante el período 1985-2016?

---

# 📦 PREPARE

## Información General del Dataset

| Métrica           | Valor       |
| ----------------- | ----------- |
| Observaciones     | 27.820      |
| Variables         | 12          |
| Países            | 101         |
| Periodo analizado | 1985 - 2016 |
| Duración          | 32 años     |

## ¿Qué contiene el dataset?

El dataset contiene información histórica sobre suicidios registrados en diferentes países entre 1985 y 2016.

El objetivo del conjunto de datos es permitir el análisis comparativo de las tasas de suicidio entre distintos contextos demográficos, temporales y económicos.

### Variables necesarias para responder las preguntas

#### Evolución temporal

* year
* suicides.100k.pop

#### Diferencias entre hombres y mujeres

* sex
* suicides.100k.pop

#### Grupos etarios

* age
* suicides.100k.pop

#### Países con tasas más altas y más bajas

* country
* suicides.100k.pop

#### Relación entre IDH y suicidio

* HDI.for.year
* suicides.100k.pop

**Observación:** aproximadamente el 70% de los registros no poseen información de IDH.

#### Relación entre PIB y suicidio

* gdp_for_year....
* gdp_per_capita....
* suicides.100k.pop

**Observación:** según glimpse(), gdp_for_year.... fue importado como texto.

#### Perfil de riesgo

* country
* sex
* age
* suicides.100k.pop

---

# 🧹 PROCESS

Ahora vamos a transformar el dataset original en un conjunto de datos limpio, consistente y confiable para responder las preguntas definidas en la fase ASK.

## Actividades realizadas

* Las variables fueron evaluadas para garantizar que su tipo de dato fuera consistente con los análisis estadísticos requeridos.
* La variable PIB fue convertida de texto a formato numérico para permitir cálculos estadísticos y análisis de correlación.
* Se identificó una alta proporción de valores faltantes en la variable IDH (69.9%), lo que impidió su utilización directa en todos los análisis.
* Para preservar la mayor cantidad posible de información, se construyó un subconjunto específico para los análisis relacionados con IDH.
* No se eliminaron registros válidos para otras preguntas SMART, evitando una pérdida innecesaria de aproximadamente el 70% de los datos disponibles.
* Las variables categóricas (país, sexo, edad y generación) fueron verificadas para garantizar la consistencia de los grupos analizados.

## Resultado

La fase PROCESS permitió obtener un conjunto de datos preparado para responder las preguntas de investigación de forma confiable y reproducible.

---

# 📈 ANALYZE

## Hallazgos principales

### 📅 Evolución temporal

La tasa promedio mundial de suicidio aumentó durante la primera década analizada, alcanzó su punto máximo en 1995 y posteriormente mostró una tendencia descendente y relativamente estable hasta 2015.

### 👨‍🦱👩 Diferencias por sexo

Los hombres presentan tasas de suicidio aproximadamente 3.8 veces superiores a las mujeres en el período analizado.

### 👴 Grupos etarios

Los adultos mayores de 75 años presentan la tasa promedio de suicidio más alta (23.96 por cada 100.000 habitantes), mientras que los menores entre 5 y 14 años registran la más baja (0.62).

Aquí se observa una relación entre edad y tasa de suicidio, evidenciando un incremento progresivo del riesgo en grupos de mayor edad.

### 🌍 Distribución geográfica

Los países con mayores tasas históricas de suicidio se concentran principalmente en Europa del Este y regiones postsoviéticas.

### 📊 Relación entre IDH y suicidio

Existe una correlación prácticamente nula entre el Índice de Desarrollo Humano (IDH) y las tasas de suicidio.

Este dato es súper interesante ya que se esperaba que a mayor desarrollo humano, menos suicidios.

Podemos decir entonces que el análisis de correlación entre el Índice de Desarrollo Humano (IDH) y las tasas de suicidio arrojó un coeficiente de 0.074, indicando una relación extremadamente débil.

Esto sugiere que el nivel de desarrollo humano no constituye por sí solo un factor explicativo importante de las variaciones observadas en las tasas de suicidio.

### ⚠️ Perfil de mayor riesgo

El análisis conjunto de país, sexo y grupo etario evidenció que los perfiles de mayor riesgo están dominados por hombres adultos mayores, particularmente aquellos de 75 años o más.

El caso más extremo corresponde a Hungría, donde este grupo alcanzó una tasa promedio de 125 suicidios por cada 100.000 habitantes.

---

