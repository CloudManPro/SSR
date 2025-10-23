#!/bin/bash

# Remove o diretório antigo para garantir uma instalação limpa
rm -rf /var/www/ssr-app

# Cria o diretório da aplicação
mkdir -p /var/www/ssr-app

# Muda o proprietário do diretório para o ec2-user, permitindo que os
# próximos passos do deploy (que rodam como ec2-user) possam escrever nele.
chown -R ec2-user:ec2-user /var/www/ssr-app
