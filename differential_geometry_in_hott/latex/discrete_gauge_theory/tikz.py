"""
Pandoc filter to process raw latex tikz environments into images.
Assumes that pdflatex is in the path, and that the standalone
package is available.  Also assumes that ImageMagick's convert
is in the path. Images are put in the tikz-images directory.
"""

import hashlib
import re
import os
import sys
import shutil
import panflute as pf
from subprocess import Popen, PIPE, call
from tempfile import mkdtemp

imagedir = "."

def sha1(x):
    return hashlib.sha1(x.encode(sys.getfilesystemencoding())).hexdigest()


def tikz2image(tikz, filetype, outfile):
    tmpdir = "."
    f = open('tikz.tex', 'w')
    f.write("""\\documentclass{standalone}
             \\usepackage{greg}
             \\usepackage[baskerville,vvarbb]{newtxmath}
             \\begin{document}
             """)
    f.write(tikz)
    f.write("\n\\end{document}\n")
    f.close()
    p = call(["xelatex", 'tikz.tex'], stdout=sys.stderr)
    if filetype == 'pdf':
        shutil.copyfile(tmpdir + '/tikz.pdf', outfile + '.pdf')
    else:
        shutil.copyfile(tmpdir + '/tikz.pdf', outfile + '.pdf')
        call(["convert", "-density", "150", "-antialias", "-background", "white", "-alpha", "remove", "-alpha", "off", outfile + '.pdf', outfile + '.' + filetype])

def log(s):
   sys.stderr.write(f"{s}\n")

def action(elem, doc):
    """
    return None -> element unchanged
    return [] -> delete element

    """
    if type(elem) == pf.RawBlock and elem.format == "latex":
        code = elem.text

        if code.strip().startswith(r"\begin{tikzcd}") or code.strip().startswith(r"\begin{tikzpicture}"):
            outfile = imagedir + '/' + sha1(code)
            filetype = {'html': 'png', 'latex': 'png'}.get(doc.format, 'png')
            src = outfile + '.' + filetype
            if not os.path.isfile(src):
                try:
                    os.mkdir(imagedir)
                    sys.stderr.write('Created directory ' + imagedir + '\n')
                except OSError:
                    pass
                tikz2image(code, filetype, outfile)
                sys.stderr.write('Created image ' + src + '\n')

            return pf.Para(pf.Image(url=src))
        else:
            return None
            #return pf.run_pandoc(text=code, args=["--from", "latex+latex_macros", "--to", "latex"], pandoc_path="/opt/homebrew/Cellar/pandoc/3.1.11.1/bin/pandoc")
            #return pf.convert_text(code, input_format="latex")

def main(doc=None):
    return pf.run_filter(action, doc=doc)

if __name__ == "__main__":
   main()
