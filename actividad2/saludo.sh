#!/bin/bash

url_inicial="https://api.github.com/users/"
echo "Ingrese su nombre de usuario de github"

read GITHUB_USER

echo "Su usuario de git es: $GITHUB_USER"

url_completa=${url_inicial}${GITHUB_USER}

contenido=$(curl -s $url_completa)

user=$(echo $contenido | jq -r '.login')
userid=$(echo $contenido | jq -r '.id')
date=$(echo $contenido | jq -r '.created_at')

fecha=$(date +'%Y-%m-%d')
log_file="/tmp/$fecha/saludos.log"
mkdir -p "/tmp/$fecha"

echo "Hola $user. User ID: $userid. Cuenta fue creada el: $date." > "$log_file"

echo "Hola $user. User ID: $userid. Cuenta fue creada el: $date."


