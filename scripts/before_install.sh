#!/bin/bash
# scripts/after_install.sh

# CORREÇÃO A SER ADICIONADA AQUI NO TOPO DO ARQUIVO
chown -R ec2-user:ec2-user /var/www/ssr-app

# --- O RESTO DO SEU CÓDIGO PERMANECE ---

# Navega para o diretório da aplicação
cd /var/www/ssr-app

# Instala as dependências de produção do Node.js
npm install --production

# Gera e configura o script de inicialização do PM2
# ADICIONE 'sudo' AQUI
sudo env PATH=$PATH:/usr/bin pm2 startup systemd -u ec2-user --hp /home/ec2-user
