##############################################################
# UNIVERSIDAD NACIONAL DEL CENTRO DEL PERÚ
# Curso: Análisis de Datos con R
# Proyecto Final
#
# Tema:
# Análisis exploratorio de datos de la Encuesta Nacional
# de Hogares (ENAHO) 2020 - Módulo 200
#
# Autora: Bridgit Olga Mananí Carrión
# Fecha: 2026
##############################################################

##############################################################
# 1. CONTEXTO DEL CONJUNTO DE DATOS
##############################################################

# Institución:
# Instituto Nacional de Estadística e Informática (INEI)

# Base de datos:
# Encuesta Nacional de Hogares (ENAHO) 2020
# Módulo 200

# Objetivo:
# Analizar las características educativas de la población
# peruana utilizando información oficial del INEI mediante
# técnicas de análisis exploratorio de datos (EDA).

# Variables de interés:
# - Sexo
# - Edad
# - Nivel educativo
# - Asistencia a un centro educativo
# - Área de residencia
# - Departamento

##############################################################
# FIN PARTE 01
##############################################################

##############################################################
# PARTE 2: IMPORTACIÓN DE DATOS
##############################################################

# Limpiar el entorno
rm(list = ls())

# Limpiar la consola
cat("\014")

##############################################################
# Instalar paquetes (solo la primera vez)
##############################################################

install.packages("haven")
install.packages("tidyverse")
install.packages("janitor")
install.packages("skimr")

##############################################################
# Cargar librerías
##############################################################

library(haven)
library(tidyverse)
library(janitor)
library(skimr)

##############################################################
# Establecer directorio de trabajo
##############################################################

setwd("C:/Users/Usuario/Downloads/737-Modulo02/737-Modulo02")

##############################################################
# PARTE 02:Importar la base de datos
##############################################################

enaho <- read_sav("Enaho01-2020-200.sav")

##############################################################
# Explorar la base
##############################################################

dim(enaho)

names(enaho)

str(enaho)

head(enaho)

summary(enaho)

glimpse(enaho)

##############################################################
# PARTE 3: LIMPIEZA Y PREPARACIÓN DE DATOS
##############################################################

# Convertir los nombres de las variables a minúsculas
names(enaho) <- tolower(names(enaho))

# Eliminar espacios en blanco en los nombres
names(enaho) <- trimws(names(enaho))

# Verificar nombres de variables
names(enaho)

##############################################################
# Revisar valores perdidos
##############################################################

colSums(is.na(enaho))

##############################################################
# Eliminar registros completamente vacíos (si existieran)
##############################################################

enaho <- enaho[rowSums(is.na(enaho)) < ncol(enaho), ]

##############################################################
# Eliminar variables completamente vacías
##############################################################

enaho <- enaho[, colSums(is.na(enaho)) < nrow(enaho)]

##############################################################
# Comprobar dimensiones luego de la limpieza
##############################################################

dim(enaho)

##############################################################
# Crear una copia de trabajo
##############################################################

enaho_limpio <- enaho

##############################################################
# Revisar la estructura final
##############################################################

glimpse(enaho_limpio)

##############################################################
# Resumen estadístico
##############################################################

summary(enaho_limpio)

##############################################################
# Fin de la limpieza
##############################################################
names(enaho_limpio)


############################################################
# ESTADÍSTICAS DESCRIPTIVAS
############################################################

library(dplyr)

# Resumen general
summary(enaho_limpio)

# Estructura
str(enaho_limpio)

# Número de observaciones y variables
dim(enaho_limpio)

# Estadísticas de la edad (p208a)
summary(enaho_limpio$p208a)

sd(enaho_limpio$p208a, na.rm = TRUE)

# Distribución por sexo (p207)
table(enaho_limpio$p207)

prop.table(table(enaho_limpio$p207))*100

# Distribución por dominio
table(enaho_limpio$dominio)

# Distribución por estrato
table(enaho_limpio$estrato)

# Ocupación
table(enaho_limpio$ocupac_r3)

############################################################
# GRAFICO 1
############################################################

library(ggplot2)

ggplot(enaho_limpio,
       aes(x = factor(p207),
           fill = factor(p207))) +
  
  geom_bar() +
  
  labs(
    title = "Distribución de la población por sexo",
    subtitle = "Base ENAHO",
    x = "Sexo",
    y = "Frecuencia",
    fill = "Sexo"
  ) +
  
  scale_x_discrete(labels = c("1"="Hombre",
                              "2"="Mujer")) +
  
  theme_minimal()


############################################################
# GRAFICO 2
############################################################

ggplot(enaho_limpio,
       aes(x = ocupac_r3,
           fill = ocupac_r3)) +
  
  geom_bar() +
  
  labs(
    title = "Distribución según grupo ocupacional",
    subtitle = "Base ENAHO",
    x = "Grupo ocupacional",
    y = "Frecuencia",
    fill = "Grupo"
  ) +
  
  theme_minimal() +
  
  theme(
    axis.text.x = element_text(angle = 45,
                               hjust = 1)
  )



##############################################################
# PROYECTO FINAL
# PARTE 2
# Análisis Final
# ENAHO 2020 - Módulo 200
##############################################################

# Librerías
library(haven)
library(tidyverse)

# Importar la base

enaho <- read_sav("Enaho01-2020-200.sav")

##############################################################
# PREGUNTA DE INVESTIGACIÓN
##############################################################

# ¿Existe diferencia en la asistencia a un centro educativo
# según el sexo de la población peruana?

##############################################################
# TABLA DE FRECUENCIAS
##############################################################

tabla <- table(enaho$p207, enaho$p306)

tabla

##############################################################
# TABLA DE PORCENTAJES
##############################################################

prop.table(tabla,1)*100

##############################################################
# Gráfico
##############################################################

ggplot(enaho,
       aes(x=factor(p207),
           fill=factor(p306)))+
  
  geom_bar(position="fill")+
  
  labs(
    
    title="Asistencia a un centro educativo según sexo",
    
    subtitle="Encuesta Nacional de Hogares (ENAHO 2020)",
    
    x="Sexo",
    
    y="Proporción",
    
    fill="Asiste"
    
  )+
  
  theme_minimal()

##############################################################
# Guardar gráfico
##############################################################

ggsave("figures/analisis_final.png",
       width=8,
       height=6)

