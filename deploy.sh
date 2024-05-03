#!/bin/bash

# Cambia al directorio del proyecto
cd /home/adams3497/Documentos/Operativos/ejercicios/nodejs

# Actualiza el repositorio desde la rama deployment
git fetch origin deployment
git reset --hard origin/deployment

# Instala las dependencias
npm install

# Reinicia el servicio
systemctl restart hello-world
