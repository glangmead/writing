set -xe
# from https://jesper.sikanda.be/posts/literate-agda.html

# --html-highlight=code emits a markdown file, but --html-highlight=all emits an HTML file
for i in discrete_gauge_theory
do
  latexpand $i.tex > tmp/$i.copyincludes.tex
  cd tmp
  cp ../greg.sty ../agda.sty ../quiver.sty ../$i.yml ../ima.csl ../connections.bib ../tikz.py .
  /opt/homebrew/Cellar/pandoc/3.1.11.1/bin/pandoc --filter tikz.py --from latex+raw_tex $i.copyincludes.tex -o $i.tikzimg.tex
  echo "\usepackage{greg}" > foo && cat $i.tikzimg.tex >> foo && mv foo $i.tikzimg.tex
  /opt/homebrew/Cellar/pandoc/3.1.11.1/bin/pandoc --from latex+latex_macros --mathjax \
    -M document-css=false --metadata-file=$i.yml \
    --toc --number-sections --number-offset=0 --standalone --citeproc -M link-citations=true \
    -V caption-justification:centering \
    $i.tikzimg.tex -t html -o ../html/$i.html
  cp *.png ../html
  cd ..
  open html/$i.html
done
