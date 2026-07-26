# 📊 Análisis Exploratorio de Datos (EDA) – ENAHO 2020

## Proyecto Final – Ofimática

### Descripción del proyecto

Este proyecto presenta un **Análisis Exploratorio de Datos (EDA)** desarrollado en **R y RStudio** utilizando información oficial de la **Encuesta Nacional de Hogares (ENAHO) 2020**, elaborada por el **Instituto Nacional de Estadística e Informática (INEI)**.

El objetivo principal fue aplicar técnicas de limpieza, transformación, análisis descriptivo y visualización de datos mediante el lenguaje de programación R, con el propósito de comprender las características de la población peruana a partir de un conjunto de datos oficial.

Durante el desarrollo del proyecto se emplearon paquetes especializados como **tidyverse**, **haven**, **ggplot2**, **janitor** y **skimr**, los cuales permitieron realizar un análisis reproducible y organizado.

---

# Fuente de datos

**Institución:** Instituto Nacional de Estadística e Informática (INEI)

**Base de datos:** Encuesta Nacional de Hogares (ENAHO) 2020 – Módulo 200

La ENAHO es una encuesta oficial que recopila información sobre las condiciones de vida de la población peruana, incluyendo aspectos relacionados con educación, empleo, salud, vivienda e ingresos, constituyendo una de las principales fuentes estadísticas del país.

---

# Objetivos

## Objetivo general

Realizar un análisis exploratorio de datos utilizando la base oficial ENAHO 2020 mediante herramientas de programación en R.

## Objetivos específicos

- Importar correctamente una base de datos oficial.
- Realizar procesos de limpieza y preparación de datos.
- Obtener estadísticas descriptivas de las principales variables.
- Elaborar visualizaciones utilizando **ggplot2**.
- Analizar una relación entre variables a partir de los resultados obtenidos durante el EDA.

---

# Contenido del repositorio

```
Proyecto_Final/
│
├── data/
│   └── Base de datos ENAHO
│
├── figures/
│   ├── grafico1.png
│   ├── grafico2.png
│   └── Graficos Rstudio.png
│
├── scripts/
│   ├── EDA.R
│   └── 04_analisis_final.R
│   └── Enaho01-2020-200.sav
│
└── README.md
```

---

# Pregunta de investigación

**¿Existe diferencia en la asistencia a un centro educativo según el sexo de la población peruana registrada en la ENAHO 2020?**

---

# Metodología

Para responder la pregunta de investigación se desarrolló un análisis exploratorio de datos siguiendo las siguientes etapas:

1. Importación de la base de datos oficial.
2. Limpieza y preparación de la información.
3. Identificación y tratamiento de valores perdidos.
4. Obtención de estadísticas descriptivas.
5. Elaboración de tablas de frecuencia y porcentajes.
6. Construcción de gráficos mediante **ggplot2**.
7. Interpretación de los resultados obtenidos.

---

# Resultados del análisis

Como parte del análisis final se construyó una tabla de contingencia entre las variables **sexo** y **asistencia a un centro educativo**, permitiendo comparar la distribución de ambas variables.

Asimismo, se calcularon porcentajes relativos y se elaboró un gráfico de barras apiladas, facilitando la identificación de posibles diferencias entre hombres y mujeres respecto a la asistencia educativa.

El análisis exploratorio permitió comprender la estructura del conjunto de datos y evidenciar la utilidad de las herramientas de visualización para interpretar información estadística de manera clara y efectiva.

---

# Conclusiones

El desarrollo del presente proyecto permitió aplicar satisfactoriamente las principales técnicas de análisis exploratorio de datos utilizando información oficial de la Encuesta Nacional de Hogares (ENAHO 2020).

Los procedimientos de limpieza, organización y exploración de datos facilitaron la identificación de las características más importantes del conjunto de datos y permitieron obtener una visión general de la población analizada.

El análisis de la relación entre el sexo y la asistencia a un centro educativo mostró cómo las tablas de frecuencia, los porcentajes y las visualizaciones gráficas constituyen herramientas fundamentales para resumir grandes volúmenes de información y apoyar la toma de decisiones basada en evidencia.

Finalmente, este proyecto permitió fortalecer las competencias en programación con R, manejo de bases de datos oficiales, análisis estadístico descriptivo y elaboración de visualizaciones de calidad, demostrando la importancia del análisis exploratorio como etapa previa a estudios estadísticos más avanzados.

---

# Autor

**Bridgit Olga Mananí Carrión**

Estudiante de Economía

Universidad Nacional del Centro del Perú (UNCP)

2026
