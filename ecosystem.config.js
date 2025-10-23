// ecosystem.config.js
module.exports = {
  apps: [{
    name: 'ssr-app',            // Nome da aplicação (IMPORTANTE: deve ser o mesmo usado no stop_server.sh)
    script: 'node_modules/.bin/next', // Caminho para o executável do Next.js
    args: 'start -p 3000',      // Argumentos para o comando `next start` na porta 3000
    exec_mode: 'cluster',       // Opcional: Roda em modo cluster para melhor performance
    instances: 'max',           // Opcional: Usa o máximo de CPUs disponíveis
    env_production: {
      NODE_ENV: 'production'
    }
  }]
};
