---
header-includes: |
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Libre+Baskerville&family=Belanosima">
  <style>
  body {
    font-family: 'Libre Baskerville', serif;
  }
  h2 {
    font-family: Belanosima, sans-serif;
  }
  </style>
---
[//]: # "https://pandoc.org/MANUAL.html"

\newcommand{\ff}{\mathbb{F}}
\newcommand{\rr}{\mathbb{R}}
\newcommand{\BAut}{\mathsf{BAut}}
\newcommand{\C}{\mathscr{C}}
\newcommand{\E}{\mathscr{E}}
\newcommand{\G}{\mathscr{G}}

## Abstract

We will show how to formalize parts of differential geometry, gauge theory, and Chern-Weil theory in homotopy type theory.

Test diagram
\begin{tikzcd}
	{(x:X)\times (f(x)=f(x))} && {(b:BG)\times (b=b)} \\
	X && BG
	\arrow["{\mathrm{pr}_1}", from=1-3, to=2-3]
	\arrow["{\lambda(x, p).(f(x),p)}", from=1-1, to=1-3]
	\arrow["f"', from=2-1, to=2-3]
	\arrow["{\mathrm{pr}_1}"', from=1-1, to=2-1]
\end{tikzcd}

The background on group extensions are [^baez_schreier], [^myers_schreier], [^nlab_group_ext].

[^baez_schreier]: John Baez, "Week 223": https://math.ucr.edu/home/baez/week223.html
[^myers_schreier]: David Jaz Myers, Dissertation: https://jscholarship.library.jhu.edu/handle/1774.2/67618
[^nlab_group_ext]: https://ncatlab.org/nlab/show/group+extension

One way of thinking about bringing smooth manifolds into this group theoretic picture is in a post by Schreiber [^schreiber_atiyah]

[^schreiber_atiyah]: Urs Schreiber, "n-Transport and Higher Schreier Theory": https://golem.ph.utexas.edu/category/2006/09/nconnections_and_higher_schrei.html

<pre class="Agda"><a id="1565" class="Symbol">{-#</a> <a id="1569" class="Keyword">OPTIONS</a> <a id="1577" class="Pragma">--without-K</a> <a id="1589" class="Pragma">--exact-split</a> <a id="1603" class="Symbol">#-}</a>

<a id="1608" class="Keyword">module</a> <a id="1615" href="group_extensions.html" class="Module Operator">group_extensions</a> <a id="1632" class="Keyword">where</a>

<a id="1639" class="Keyword">open</a> <a id="1644" class="Keyword">import</a> <a id="1651" href="foundation-core.universe-levels.html" class="Module">foundation-core.universe-levels</a>
<a id="1683" class="Keyword">open</a> <a id="1688" class="Keyword">import</a> <a id="1695" href="foundation-core.functions.html" class="Module">foundation-core.functions</a>
<a id="1721" class="Keyword">open</a> <a id="1726" class="Keyword">import</a> <a id="1733" href="foundation-core.identity-types.html" class="Module">foundation-core.identity-types</a>

<a id="1765" class="Comment">-- What is the analogue in HoTT of the fact from group extensions that we classify an extension by </a>
<a id="1865" class="Comment">-- taking a set-based section of the splitting, seeing that those elements act on the left hand group,</a>
<a id="1968" class="Comment">-- noting that this map into Aut G is not a homomorphism. There is a 2-cell that we can conjugate with that makes</a>
<a id="2082" class="Comment">-- it a homomorphism. So together, the extension (plus the arbitrary choice of splitting) yeilds a 2-map to the 2-group</a>
<a id="2202" class="Comment">-- AUT(G).</a>
<a id="2213" class="Comment">-- For us, a splitting will be a section of a type family. This acts on loops with apd.</a>
<a id="2301" class="Comment">-- So we want to prove some facts about apd and to what extent it&#39;s a homomorphism of loops.</a>
<a id="2394" class="Comment">-- It doesn&#39;t send loops to loops, because it sends the loop p to a loop from fx to ap p fx.</a>
<a id="2487" class="Comment">-- apd-hom :</a>
<a id="2500" class="Comment">--   {l1 l2 : Level} {A : UU l1} {B : A → UU l2} (f : (a : A) → B a) {x : A}</a>
<a id="2577" class="Comment">--   (p q : x ＝ x) → (apd f (p ∙ q)) ＝ ((apd ((tr B p) ∘ f) q) ∙ (apd (f) p))</a>
<a id="2655" class="Comment">-- apd-hom f refl q = ?</a>

</pre>