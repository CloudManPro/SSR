#!/bin/bash
# scripts/after_install.sh

# --- CORREÇÃO DE PERMISSÕES COM SUDO (PASSO 1) ---
# Executa 'chown' com 'sudo' para que o ec2-user possa tomar posse dos arquivos.
sudo chown -R ec2-user:ec2-user /var/www/ssr-app

# Navega para o diretório da aplicação
cd /var/www/ssr-app

# Instala as dependências de produção do Node.js (AGORA VAI FUNCUCIONAR)
npm install --production

# Gera e configura o script de inicialização do PM2
# Este comando também precisa de 'sudo' para criar o serviço systemd
sudo env PATH=$PATH:/usr/bin pm2 startup systemd -u ec2-user --hp /home/ec2-user
