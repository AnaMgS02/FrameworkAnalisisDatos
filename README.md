# Framework de Análisis de Datos
Basado en Google Data Analytics + Posit Cloud + R

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
