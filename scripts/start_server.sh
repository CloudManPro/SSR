#!/bin/bash
# Navega para o diretório da aplicação
cd /var/www/ssr-app

# Inicia a aplicação Next.js com PM2
# O nome 'ssr-app' é um identificador para o processo
pm2 start npm --name "ssr-app" -- start

# Garante que o PM2 reinicie com o servidor
pm2 save
pm2 startup
