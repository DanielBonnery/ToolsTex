if hash XXXtex 2>/dev/null; 
  then 
    echo "command XXXtex already defined"; 
  else     
    echo -e "#command line for XXXtex added  $(date)\nXXXtex() {\n pdflatex \"\$(basename \$1).tex" -shell-escape -interaction=batchmode;bibtex -terse \"\$(basename \$1).aux";pdflatex \"\$(basename \$1).tex" -shell-escape -interaction=batchmode;\n}">>.bashrc;
    source ~/.bashrc
fi;
