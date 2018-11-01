# cleantex
Creates a command line that will delete all temporary latex compilation files for linux

the command is:
`
if hash cleantex 2>/dev/null; then echo -e "#command line for cleantex added  $(date)\n cleantex() {find ${1:-~} \( -iname '*.aux' -or -iname '.*.aux'  \) -delete}" >>~/.bashrc; else echo "command cleantex already defined"; fi;
`
