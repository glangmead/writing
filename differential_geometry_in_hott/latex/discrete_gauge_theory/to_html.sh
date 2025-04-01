set -xe
# from https://jesper.sikanda.be/posts/literate-agda.html

# --html-highlight=code emits a markdown file, but --html-highlight=all emits an HTML file
mkdir -p tmp
for i in discrete_gauge_theory
do
  latexpand $i.tex > tmp/$i.copyincludes.tex
  cd tmp
  cp ../greg.sty ../agda.sty ../quiver.sty ../$i.yml ../aims-mathematics.csl ../connections.bib ../tikz.py .
  ../pandoc-3.1.13-arm64/bin/pandoc --wrap=none --filter tikz.py --from latex+raw_tex $i.copyincludes.tex -o $i.tikzimg.tex
  echo "\usepackage{greg}" > foo && cat $i.tikzimg.tex >> foo && mv foo $i.tikzimg.tex
  ../pandoc-3.1.13-arm64/bin/pandoc --wrap=none --from latex+latex_macros --mathjax \
    -M document-css=false --metadata-file=$i.yml \
    --toc --number-sections --number-offset=0 --standalone --citeproc -M link-citations=true \
    -V caption-justification:centering \
    $i.tikzimg.tex -t html -o ../html/$i.html
  cp -f *.png *.jpg *.svg ../html || :
  cd ..
  cp -f *.png *.jpg *.svg html || :
  cp figs/dense_circle.pdf figs/triangulated_genus3.pdf figs/triangulated_sphere.pdf html
  cat html/$i.html | sed 's:embed  *src= *"\([^"][^"]*\)\.p..":img src="\1.png":g' | sed 's/0◻//g' | sed 's=<p><em><span>2</span></em></p>==g' | sed 's=figs/==g' > html/foo.html
  mv html/$i.html html/$i.html.bak
  mv html/foo.html html/$i.html
  open html/$i.html
done
