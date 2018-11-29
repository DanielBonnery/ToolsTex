# cleantex
Creates a command line that will delete all temporary latex compilation files for linux

the command is:
```
if hash cleantex 2>/dev/null; 
  then 
    echo "command cleantex already defined"; 
  else 
    echo -e "#command line for cleantex added  $(date)\ncleantex() {\n find \${1:-~} \( -iname '*.aux' -or -iname '.*.aux'  \) -delete\n}">>.bashrc;
    source ~/.bashrc
fi;
```

One can add all the undesired extensions.
this tests if the cleantex command exists, then if it does not, it appends the lines that correspond to function cleantex
cleantex takes one optional argument that is a folder, by default home directory, if it does it is not doing anything.

# XXXtex

# cleantexfile
