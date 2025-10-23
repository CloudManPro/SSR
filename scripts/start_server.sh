# scripts/start_server.sh
#!/bin/bash
cd /var/www/ssr-app

# 1. Inicia ou reinicia o processo.
pm2 startOrRestart ecosystem.config.js --env production

# 2. Salva a lista de processos atual.
pm2 save
