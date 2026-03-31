#!/bin/bash

function verifica_conflito() {
    local arquivo="$1"
    if grep -q -E '<<<<<<<|=======|>>>>>>>' "$arquivo"; then
        echo "O arquivo $arquivo contém marcação de conflito!"
    fi
}

function verifica_diretorio() {
    local diretorio="$1"
    local arquivo
    for arquivo in "$diretorio"/*; do
        if [ -f "$arquivo" ]; then
            verifica_conflito "$arquivo"
        elif [ -d "$arquivo" ]; then
            verifica_diretorio "$arquivo"
        fi
    done
}

verifica_diretorio "$1"