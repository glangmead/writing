# from https://jesper.sikanda.be/posts/literate-agda.html

# --html-highlight=code emits a markdown file, but --html-highlight=all emits an HTML file
for i in group_extensions
do
  agda --html --html-dir=html --html-highlight=code $i.lagda.md 

  # this combo looks good to me right now: -M document-css=true --css Agda.css --mathjax --standalone
  pandoc --lua-filter tikz.lua --from markdown+footnotes+latex_macros -M document-css=true --css Agda.css --toc --mathml --standalone html/$i.md -o html/$i.html
  open html/$i.html
done
