if hash XXXtex 2>/dev/null; 
  then 
    echo "command XXXtex already defined"; 
  else 
    echo -e "#command line for cleantex added  $(date)\nXXXtex() {\n pdflatex '\${1}.tex' -shell-escape -interaction=batchmode;bibtex -terse '\${1}.tex';pdflatex '\${1}.tex' -shell-escape -interaction=batchmode;\n}">>.bashrc;
    source ~/.bashrc
fi;
