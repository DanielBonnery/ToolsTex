if hash XXXtex 2>/dev/null; 
  then 
    echo "command XXXtex already defined"; 
  else     
    echo -e "#command line for cleantex added  $(date)\nXXXtex() {\n basename=${1%.*};\npdflatex '\${basename}.tex' -shell-escape -interaction=batchmode;bibtex -terse '\${basename}.tex';pdflatex '\${basename}.tex' -shell-escape -interaction=batchmode;\n}">>.bashrc;
    source ~/.bashrc
fi;
