#!/bin/bash
# Navega para o diretório da aplicação
cd /var/www/ssr-app

# Instala apenas as dependências de produção
npm install --production
