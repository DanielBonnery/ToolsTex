#!/bin/bash
if hash cleantex 2>/dev/null; then echo -e "#command line for cleantex added  $(date)\n cleantex() {find ${1:-~} \( -iname '*.aux' -or -iname '.*.aux'  \) -delete}" >>~/.bashrc; else echo "command cleantex already defined"; fi;
