#!/bin/bash
# scripts/after_install.sh

# Navega para o diretório da aplicação
cd /var/www/ssr-app

# Instala as dependências de produção do Node.js
npm install --production

# --- ADIÇÃO CRÍTICA ---
# Gera e configura o script de inicialização do PM2 para o usuário ec2-user.
# Isso garante que o PM2 e seus processos persistam após o deploy.
# O comando é executado no contexto do ec2-user para gerar o serviço systemd correto.
# O `env PATH...` garante que o PM2 encontre o Node.js.
env PATH=$PATH:/usr/bin pm2 startup systemd -u ec2-user --hp /home/ec2-user
