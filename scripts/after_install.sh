sudo chown -R ec2-user:ec2-user /var/www/ssr-app

# Navega para o diretório da aplicação
cd /var/www/ssr-app

# Agora o npm install, rodando como ec2-user, terá permissão para escrever.
npm install --production
