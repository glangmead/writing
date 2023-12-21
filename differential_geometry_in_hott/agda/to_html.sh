# from https://jesper.sikanda.be/posts/literate-agda.html

# --html-highlight=code emits a markdown file, but --html-highlight=all emits an HTML file
for i in discrete_gauge_theory
do
  agda --html --html-dir=html --html-highlight=code $i.lagda.md 

  # this combo looks good to me right now: -M document-css=true --css Agda.css --mathjax --standalone
  pandoc --lua-filter tikz.lua --from markdown+footnotes+latex_macros \
    -M document-css=false --css Agda.css \
    --toc --mathjax --standalone --citeproc -M link-citations=true \
    html/$i.md -o html/$i.html
  cat html/$i.html | sed 's="foundation="https://unimath.github.io/agda-unimath/foundation=g' > html/foo.html
  mv html/foo.html html/$i.html
  cat html/$i.html | sed 's="structured-type="https://unimath.github.io/agda-unimath/structured-type=g' > html/foo.html
  mv html/foo.html html/$i.html
  open html/$i.html
done
