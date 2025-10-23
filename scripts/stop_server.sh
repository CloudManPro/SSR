#!/bin/bash
#stop_server.sh
# Para e remove a aplicação do PM2, se ela estiver rodando
# A primeira linha verifica se o processo existe para evitar erros na primeira implantação
pm2 describe ssr-app > /dev/null
RUNNING=$?

if [ "${RUNNING}" -eq 0 ]; then
  pm2 stop ssr-app
  pm2 delete ssr-app
fi
