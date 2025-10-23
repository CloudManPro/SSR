# scripts/after_install.sh
# (Novo script)

#!/bin/bash

# Navega para o diretório da aplicação onde os arquivos foram copiados
cd /var/www/ssr-app

# Instala APENAS as dependências de produção.
# O '--production' é crucial para não instalar devDependencies (como jest, eslint)
# e para tornar a instalação mais rápida e segura.
npm install --production
