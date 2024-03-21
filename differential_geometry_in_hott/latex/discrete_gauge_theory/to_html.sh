# from https://jesper.sikanda.be/posts/literate-agda.html

# --html-highlight=code emits a markdown file, but --html-highlight=all emits an HTML file
for i in discrete_gauge_theory
do
  /opt/homebrew/Cellar/pandoc/3.1.11.1/bin/pandoc --filter tikz.py --from latex+raw_tex $i.tex -o $i.tikzimg.tex
  echo "\usepackage{greg}" > foo && cat $i.tikzimg.tex >> foo && mv foo $i.tikzimg.tex
  /opt/homebrew/Cellar/pandoc/3.1.11.1/bin/pandoc --from latex+latex_macros \
    -M document-css=false --metadata-file=$i.yml \
    --toc --number-sections --number-offset=0 --standalone --citeproc -M link-citations=true \
    -V caption-justification:centering \
    $i.tikzimg.tex -o html/$i.html
  cp *.svg html
  open html/$i.html
done
