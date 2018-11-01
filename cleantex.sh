#!/bin/bash
if hash cleantex 2>/dev/null; 
  then 
    echo "command cleantex already defined"; 
  else 
    echo -e "#command line for cleantex added  $(date)\ncleantex() {\n find \${1:-~} \( -iname '*.aux' -or -iname '.*.aux'  \) -delete\n}">>.bashrc;
    source ~/.bashrc;
fi;
