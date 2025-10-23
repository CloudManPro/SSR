#!/bin/bash
#before_install.sh
# Cria o diretório da aplicação se ele não existir (importante para o primeiro deploy)
mkdir -p /var/www/ssr-app

# Remove APENAS o conteúdo do diretório antigo para garantir uma instalação limpa
# O 'shopt' e o 'dotglob' garantem que arquivos ocultos (como .env) também sejam removidos.
shopt -s dotglob
rm -rf /var/www/ssr-app/*
shopt -u dotglob

# Muda o proprietário do diretório para o ec2-user, permitindo que os
# próximos passos do deploy (que rodam como ec2-user) possam escrever nele.
chown -R ec2-user:ec2-user /var/www/ssr-app
