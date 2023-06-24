---
header-includes: |
  <style>
  h2 {
    font-family: Quadrat Serial, sans-serif;
  }
  </style>
---

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



<pre class="Agda"><a id="715" class="Symbol">{-#</a> <a id="719" class="Keyword">OPTIONS</a> <a id="727" class="Pragma">--without-K</a> <a id="739" class="Pragma">--exact-split</a> <a id="753" class="Symbol">#-}</a>

<a id="758" class="Keyword">module</a> <a id="765" href="group_extensions.html" class="Module Operator">group_extensions</a> <a id="782" class="Keyword">where</a>

<a id="789" class="Keyword">open</a> <a id="794" class="Keyword">import</a> <a id="801" href="foundation-core.universe-levels.html" class="Module">foundation-core.universe-levels</a>
<a id="833" class="Keyword">open</a> <a id="838" class="Keyword">import</a> <a id="845" href="foundation-core.functions.html" class="Module">foundation-core.functions</a>
<a id="871" class="Keyword">open</a> <a id="876" class="Keyword">import</a> <a id="883" href="foundation-core.identity-types.html" class="Module">foundation-core.identity-types</a>

<a id="915" class="Comment">-- What is the analogue in HoTT of the fact from group extensions that we classify an extension by </a>
<a id="1015" class="Comment">-- taking a set-based section of the splitting, seeing that those elements act on the left hand group,</a>
<a id="1118" class="Comment">-- noting that this map into Aut G is not a homomorphism. There is a 2-cell that we can conjugate with that makes</a>
<a id="1232" class="Comment">-- it a homomorphism. So together, the extension (plus the arbitrary choice of splitting) yeilds a 2-map to the 2-group</a>
<a id="1352" class="Comment">-- AUT(G).</a>
<a id="1363" class="Comment">-- For us, a splitting will be a section of a type family. This acts on loops with apd.</a>
<a id="1451" class="Comment">-- So we want to prove some facts about apd and to what extent it&#39;s a homomorphism of loops.</a>
<a id="1544" class="Comment">-- It doesn&#39;t send loops to loops, because it sends the loop p to a loop from fx to ap p fx.</a>
<a id="1637" class="Comment">-- apd-hom :</a>
<a id="1650" class="Comment">--   {l1 l2 : Level} {A : UU l1} {B : A → UU l2} (f : (a : A) → B a) {x : A}</a>
<a id="1727" class="Comment">--   (p q : x ＝ x) → (apd f (p ∙ q)) ＝ ((apd ((tr B p) ∘ f) q) ∙ (apd (f) p))</a>
<a id="1805" class="Comment">-- apd-hom f refl q = ?</a>

</pre>