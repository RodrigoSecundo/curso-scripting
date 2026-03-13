#!/bin/bash

arquivo=$1

if [ $# -ne 1 ]; then
    echo "Uso correto: $0 (arquivo)"
    exit 1
fi

if [ ! -f "$arquivo" ]; then
    echo "O arquivo $arquivo não existe!"
    exit 1
fi

if grep -q -E '<<<<<<<|=======|>>>>>>>' $arquivo; then
    echo "O arquivo $arquivo contém marcações de conflito de merge"
else
    echo "O arquivo $arquivo não contém marcações de conflito de merge"
fi