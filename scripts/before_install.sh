#!/bin/bash
# Cria o diretório se ele não existir e remove o conteúdo antigo
# Isso garante que não sobrem arquivos da versão anterior
rm -rf /var/www/ssr-app
mkdir -p /var/www/ssr-app
