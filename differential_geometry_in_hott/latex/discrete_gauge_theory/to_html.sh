# from https://jesper.sikanda.be/posts/literate-agda.html

# --html-highlight=code emits a markdown file, but --html-highlight=all emits an HTML file
for i in discrete_gauge_theory
do
  /opt/homebrew/Cellar/pandoc/3.1.11.1/bin/pandoc --lua-filter tikz.lua --from latex \
    -M document-css=false --metadata-file=$i.yml \
    --toc --number-sections --number-offset=0 --mathjax --standalone --citeproc -M link-citations=true \
    -V caption-justification:centering \
    $i.tex -o html/$i.html
  #cp *.png html
  #cp *.gif html
  open html/$i.html
done
