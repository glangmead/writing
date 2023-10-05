---
header-includes: |
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Libre+Baskerville&family=Quattrocento:wght@700">
  <style>
  body {
    font-family: Baskerville, 'Libre Baskerville', serif;
  }
  h1, h2, h3, h4, h5, h6 {
    font-family: Quattrocento, sans-serif;
    font-weight: bold;
    text-align: center;
  }
  </style>
title:
summary: In-progress masters thesis relating connections and curvature to group extensions, building on the Symmetry book of Bezem et. al.
date: 2023-06-26
bibliography: connections.bib
csl: ima.csl
---

<!-- https://pandoc.org/MANUAL.html -->
\newcommand{\defeq}{\stackrel{\textup{def}}{=}}
\newcommand{\U}{\mathcal{U}}
\newcommand{\BG}{\mathsf{B}G}
\newcommand{\Copy}{\mathrm{Copy}}
\newcommand{\Tor}{\mathsf{Tor}}
\newcommand{\id}{\mathrm{id}}
\newcommand{\Pr}{\mathrm{Pr}}
\newcommand{\gset}{G\text{-}\Set}
\newcommand{\torg}{\Tor_G}
\newcommand{\ad}{\mathrm{ad}}
\newcommand{\pt}{\mathrm{pt}}
\newcommand{\dotto}{\,\cdot\!\to}
\newcommand{\dottol}[1]{\stackrel{#1}{\dotto}}
\newcommand{\icol}[2]{{{#1} \choose {#2}}}
\newcommand{\twist}[2]{{#1}^{\circlearrowleft {#2}}}
\newcommand{\apd}{\mathrm{apd}}
\newcommand{\ap}{\mathrm{ap}}
\newcommand{\tr}{\mathrm{tr}}
\newcommand{\Type}{\mathsf{Type}}
\newcommand{\Inn}{\mathrm{Inn}}
\newcommand{\refl}{\mathrm{refl}}
\newcommand{\Aut}{\mathrm{Aut}}
\newcommand{\im}{\mathrm{im}}
\newcommand{\shape}{\text{∫}}
\newcommand{\flatdr}{\flat_\mathrm{dR}}
\newcommand{\fbar}{\overline{f}}
\newcommand{\ff}{\mathbb{F}}
\newcommand{\Id}{\mathrm{Id}}
\newcommand{\rr}{\mathbb{R}}
\newcommand{\rrn}{\mathbb{R}^n}
\newcommand{\rrm}{\mathbb{R}^m}
\newcommand{\rrx}{\mathbb{R}[x]/x^2}
\newcommand{\rry}{\mathbb{R}[y]/y^2}
\newcommand{\cc}{\mathbb{C}}
\newcommand{\nn}{\mathbb{N}}
\newcommand{\zz}{\mathbb{Z}}
\newcommand{\kk}{\mathbb{K}}
\newcommand{\ss}{\mathbb{S}}
\newcommand{\dd}{\mathbb{D}}
\newcommand{\vv}{\mathbb{V}}
\newcommand{\Hom}{\mathrm{Hom}}
\newcommand{\Set}{\mathsf{Set}}
\newcommand{\BAut}{\mathsf{BAut}}
\newcommand{\Binn}{\mathsf{Binn}}
\newcommand{\CartSp}{\mathsf{CartSp}}
\newcommand{\fib}{\mathrm{fib}}
\newcommand{\infg}{\infty\text{-groupoid}}
\newcommand{\hquot}{/\!\!/}
\newcommand{\C}{\mathscr{C}}
\newcommand{\E}{\mathscr{E}}
\newcommand{\G}{\mathscr{G}}
\newcommand{\uni}{\mathcal{U}}
\newcommand{\gauge}{\mathcal{G}}
\newcommand{\Ad}{\mathrm{Ad}}

<center>
![](geb-logo.png "Image of the book cover of Godel Escher Bach"){ width=500 }
</center>

## Abstract

Homotopy type theory offers simplified access to several constructions that were harder to understand in classical mathematics. We want to leverage those and extend them into the fields of differential geometry and gauge theory.
Building on homotopy type theory and the _Symmetry_ book, we will define the type of extensions of a type by a group. 
Then we will look inside an extension to find types that correspond to principal bundles with connection and curvature.
We can conclude that a principal bundle with connection is a group extension, an intertwining of the path groupoid structure of a smooth manifold with that of a group.
To be clear, we don't offer a method for mapping a smooth manifold in the classical sense (which is a 0-type) into the universe of 2-types in a way that captures the [_path groupoid_](https://ncatlab.org/nlab/show/path+n-groupoid), the collection of paths up to reparameterization.

## Very Quick Version

The theory of group extensions is, and contains, the theory of principal bundles with connection! This was surprising to me. 
Moreover, homotopy type theory offers an exciting new framework for formalizing groups and group theory, and hence bundles with connection.

Before now, (my) efforts to bring geometry into type theory got stuck when trying to import smooth manifolds. Real cohesion and infinitesimal cohesion seemed to have limitations when trying to define the path groupoid of a space, where the 1-dimensional curves need to be unequal to each other. Modalities seemed to always land us in a world of flat connections only.

So let's factor the overall project (bring gauge theory into type theory) into two parts. We will leave unaddressed the questions about converting smooth manifolds, which are 0-types, into path groupoids at level 2.
Instead we will suppose we have a pointed 2-type and want to extend it with a 1-group. Inside this picture will emerge a principal bundle with connection and curvature.

If $B$ is a pointed, connected 2-type and $\BG$ is a pointed, connected 1-type hosting the group $G$, then an extension of $B$ by $\BG$ is by definition a fiber sequence $$\BG\dottol{i} E\dottol{p} B$$ where the maps are pointed, and the fibers of $p$ are all merely equivalent to $\BG$.

This is a definition by mapping into $B$. As usual, there is an equivalent map out of $B$ into a classifying space, which is $\BAut\BG\defeq \U_{\BG}$, the connected component of $\BG$ in the universe. $\BAut\BG$ is a 2-type. Denote the classifying map by $f:B\to \BAut\BG$.

A section $s:\Pi_{x:B}f(x)$ of the map $p$ would then be a choice of a term in a "$\BG$-clone" $f(x)$ for each point $x:B$. This is a dependent version of a map $B\to\BG$, so we can justify calling such a section a principal bundle!

All told then, we have this equivalent picture of the extension:$$E:=\sum_{x:B}f(x) \mathrel{\mathop{\rightleftarrows}^{\mathrm{pr}_1}_{s}} B \xrightarrow[]{f} \BAut\BG.$$

This setup is slightly enriched compared to the type $B\to \BG$ because the fibers $f(x)$ are 1-types, and hence have terms and paths on the "interior". But each $f(x)$ is also a term in $\BAut\BG$ and so has self-identifications on the "exterior", and even identifications between these at level 2.

Continuing with the use of elementary tools of homotopy type theory, consider $\apd(s)$, the dependent action on paths. This function maps paths $p:x=_B y$ to paths in $E$. A path lying over $p$ has a few names in the literature: a _path over_, a _dependent identification_, and a _lift_. The `agda-unimath` library uses the term "dependent identification," for example. So in particular, $\apd(s)(p):\tr(p)(s(x))=s(y)$, which provides by univalence an equivalence from $s(x)$, through $\tr(p)$, through $\apd(s)(p)$, to $s(y)$. Thinking of $s(x)$ and $s(y)$ as two torsors, this equivalence is a connection on the principal bundle. So $s$ packages the bundle aspect at the level of terms, and a connection at level 1. This is as it should be: the resuse of the term "transport" in homotopy type theory was apparently inspired by this analogy that is more than an analogy.

If we have two paths $p,q:x=_B y$ and a 2-path $H:p=q$, then $s$ can also apply to $H$, giving us a path between dependent identifications. 


## Agda

This document is a literate Agda file which contains a formalization of all the concepts and results. It is written such that the reader can skip all the Agda if they like. But as an author, requiring a parallel formalization has been an invaluable tool to solidify my own understanding and increase my confidence and self-sufficiency.

I am grateful for the maintainers of the [`agda-unimath` library](https://unimath.github.io/agda-unimath/) [@agda-unimath] which this library is built on top of. The code is hyperlinked and many of those links lead back to the web interface for `agda-unimath`.

## Extensions: vertical and horizontal

As Jon Sterling has recently emphasized [@sterling2023geometry], homotopy type theory allows us to seamlessly move between objects _over_ a type $B$ and maps from $B$ into a universal (classifying) type, and that this facility simplifies our access to Grothendieck's _relative point of view_. If we have a morphism $E \to B$ then we can view it as a type family of fibers. And if we have a morphism $f:B\to \mathcal{U}$ into a type of types, we can form the type $E\defeq \sum_{x:B}f(x)$ and the projection map $E\to B$.

Fix a connected 1-type $\BG$ with chosen point $*:\BG$ (i.e. a group $G$) and a connected 2-type $B$ with a chosen point $x:B$. We will need help to avoid confusion about whether some variable has a basepoint. So let me clarify that $\BG, E, B:\Type_*$, the type of pointed types. If we need to refer to the underlying types we will follow the _Symmetry_ book by using $\BG_\div, E_\div$, and $B_\div$.

Following Myers [@myersthesis], we define the type of extensions of $B$ by $G$ to consist of

* a type $E$ with point $e:E$
* a map $p:E\to B$ and a proof of pointedness, i.e. a term $p(e)=_B x$
* a term $F:\prod_{y:B}||\fib_p(y)=\BG||_{-1}$ that all the fibers of $p$ are merely equivalent to $\BG$.

We can then form the _fiber sequence_ $$\BG\dottol{i} E\dottol{p} B$$ where $i$ is a specified equivalence of $\BG$ with the fiber over $x$.

The fiber sequence is the relative point of view because it consists entirely of the map $E\dottol B$ (and the proof that the fibers are $\BG$). Type theory makes it easy to compute the appropriate classifying map out of $B$.

<!-- https://q.uiver.app/?q=WzAsNCxbMiwwLCIoYjpCKVxcdGltZXMgUChiKVxccXVhZFxccXVhZCJdLFsyLDEsIkIiXSxbMCwwLCIoYTpBKVxcdGltZXMgUChmKGEpKSJdLFswLDEsIkEiXSxbMCwxLCJcXG1hdGhybXtwcn1fMSJdLFsyLDAsIlxcbGFtYmRhKGEsIHApLihmKGEpLHApIl0sWzMsMSwiZiIsMl0sWzIsMywiXFxtYXRocm17cHJ9XzEiLDJdXQ== -->
\begin{tikzcd}
	{(a:A)\times P(f(a))} && {(b:B)\times P(b)} \\
	A && B
	\arrow["{\mathrm{pr}_1}", from=1-3, to=2-3]
	\arrow["{\lambda(a, p).(f(a),p)}", from=1-1, to=1-3]
	\arrow["f"', from=2-1, to=2-3]
	\arrow["{\mathrm{pr}_1}"', from=1-1, to=2-1]
\end{tikzcd}

```agda
{-# OPTIONS --without-K --exact-split #-}

module group_extensions where

open import foundation-core.equivalences
open import foundation-core.function-types
open import foundation-core.homotopies
open import foundation-core.identity-types

open import foundation.dependent-identifications
open import foundation.action-on-identifications-functions
open import foundation.dependent-pair-types
open import foundation.transport-along-higher-identifications
open import foundation.transport-along-identifications
open import foundation.universe-levels

open import structured-types.pointed-types
open import structured-types.pointed-maps
open import structured-types.pointed-families-of-types
open import structured-types.pointed-sections

module _
  where
  -- point-Pointed-Type B will return the point
  -- type-Pointed-Type B will return the type without its point
  -- hit C-x C-= to see how a symbol was typed
  -- https://marketplace.visualstudio.com/items?itemName=banacorn.agda-mode
  -- p : E →∗ B // \to\ast
  -- compare to Π-Pointed-Type which is the type of dependent functions, with base point the function that selects all the base points
  -- pointed-Π aka Π∗
  
  -- DJM lemma 2.5.4: pointed families over B are equivalent to pointed maps into B
  -- map-pointed-map-pointed-fam :
  --   {l : Level} {E B : Pointed-Type l} → (E →∗ B) → (Pointed-Fam l B)
  -- map-pointed-map-pointed-fam p = {!   !}

  -- then prove is-equiv-map-pointed-map-pointed-fam
  

```

```agda
module _
  {l1 l2 : Level} {A : UU l1} (B : A → UU l2)
  where

  compute-concat-dependent-identification-refl-greg :
    { y z : A } (q : y ＝ z) → 
    { x' y' : B y} {z' : B z} (p' : x' ＝ y') → 
    ( q' : dependent-identification B q y' z') → 
    ( concat-dependent-identification {l1} {l2} {A} B {y} {y} {z} refl q {x'} {y'} {z'} p' q') ＝ ap (tr B q) p' ∙ q'
  compute-concat-dependent-identification-refl-greg refl refl q' = refl

```

## Group extensions, classically

Let's take a look at [this informal overview of classical Schreier theory by John Baez](https://math.ucr.edu/home/baez/week223.html) [@baez_schreier_week223] and see how things line up with the univalent picture.

