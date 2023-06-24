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

```agda
{-# OPTIONS --without-K --exact-split #-}

module group_extensions where

open import foundation-core.universe-levels
open import foundation-core.functions
open import foundation-core.identity-types

-- What is the analogue in HoTT of the fact from group extensions that we classify an extension by 
-- taking a set-based section of the splitting, seeing that those elements act on the left hand group,
-- noting that this map into Aut G is not a homomorphism. There is a 2-cell that we can conjugate with that makes
-- it a homomorphism. So together, the extension (plus the arbitrary choice of splitting) yeilds a 2-map to the 2-group
-- AUT(G).
-- For us, a splitting will be a section of a type family. This acts on loops with apd.
-- So we want to prove some facts about apd and to what extent it's a homomorphism of loops.
-- It doesn't send loops to loops, because it sends the loop p to a loop from fx to ap p fx.
-- apd-hom :
--   {l1 l2 : Level} {A : UU l1} {B : A → UU l2} (f : (a : A) → B a) {x : A}
--   (p q : x ＝ x) → (apd f (p ∙ q)) ＝ ((apd ((tr B p) ∘ f) q) ∙ (apd (f) p))
-- apd-hom f refl q = ?

```
