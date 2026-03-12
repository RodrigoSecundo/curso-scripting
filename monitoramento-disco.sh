#!/bin/bash

ponto_montagem="/boot/efi"
nome_log=$(date +%F-%H:%M)
diretorio="/home/secundo"

uso_disco=$(df -h | grep $ponto_montagem | awk '{print $5}')
echo "Uso de disco em: "$uso_disco > "$diretorio/$nome_log.log"
