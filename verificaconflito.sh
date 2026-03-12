#!/bin/bash

arquivo=$1

if grep -q -E '<<<<<<<|=======|>>>>>>>' $arquivo; then
    echo "O arquivo $arquivo contém marcações de conflito de merge"
else
    echo "O arquivo $arquivo não contém marcações de conflito de merge"
fi