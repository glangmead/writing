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
             \\geometry{margin=1in}
             \\begin{document}
             \\newlength{\\mylen}
             \\newlength{\\mylin}
             """)
    f.write(tikz)
    f.write("\n\\end{document}\n")
    f.close()
    p = call(["xelatex", 'tikz.tex'], stdout=sys.stderr)
    if filetype == 'pdf':
        shutil.copyfile(tmpdir + '/tikz.pdf', outfile + '.pdf')
    else:
        shutil.copyfile(tmpdir + '/tikz.pdf', outfile + '.pdf')
        call(["pdf2svg", outfile + '.pdf', outfile + '.small.' + filetype])
        call(["rsvg-convert", "-z", "2", outfile + '.small.' + filetype, "-f", "svg", "-o", outfile + '.' + filetype])
        #call(["convert", "-density", "300", "-units", "pixelsperinch", "-depth", "8", "-antialias", "-background", "white", "-alpha", "remove", "-alpha", "off", outfile + '.pdf', outfile + '.' + filetype])

def log(s):
   sys.stderr.write(f"{s}\n")

def action(elem, doc):
    """
    return None -> element unchanged
    return [] -> delete element

    """
    # try:
    #   sys.stderr.write("-----\n")
    #   sys.stderr.write(elem.text)
    #   sys.stderr.write("--\n")
    #   sys.stderr.write(str(type(elem)))
    #   sys.stderr.write("-----\n")
    # except:
    #   pass
    if type(elem) in [pf.RawBlock, pf.Math] and elem.format in ["latex", "DisplayMath"]:
        code = elem.text

        if code.strip().startswith(r"\begin{tikzcd}") or code.strip().startswith(r"\begin{tikzpicture}"):
            outfile = imagedir + '/' + sha1(code)
            filetype = {'html': 'svg', 'latex': 'svg'}.get(doc.format, 'svg')
            src = outfile + '.' + filetype
            if not os.path.isfile(src):
                try:
                    os.mkdir(imagedir)
                    sys.stderr.write('Created directory ' + imagedir + '\n')
                except OSError:
                    pass
                tikz2image(code, filetype, outfile)
                sys.stderr.write('Created image ' + src + '\n')
            
            if elem.format == "latex":
               result = pf.Para(pf.Image(url=src))
            if elem.format == "DisplayMath":
               result = [pf.LineBreak, pf.Image(url=src)]
            return result
        else:
            return None
            #return pf.run_pandoc(text=code, args=["--from", "latex+latex_macros", "--to", "latex"], pandoc_path="/opt/homebrew/Cellar/pandoc/3.1.11.1/bin/pandoc")
            #return pf.convert_text(code, input_format="latex")

def main(doc=None):
    return pf.run_filter(action, doc=doc)

if __name__ == "__main__":
   main()
