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
---

<!-- https://pandoc.org/MANUAL.html -->
\newcommand{\defeq}{\stackrel{\textup{def}}{=}}
\newcommand{\U}{\mathcal{U}}
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

## Agda

This document is a literate Agda file which contains a formalization of all the concepts and results. It is written with the intent that you can skip all the Agda if you like. But as an author, requiring a parallel formalization has been an invaluable tool to solidify my own understanding and increase my confidence and self-sufficiency.

I am grateful for the `agda-unimath` library [@agda-unimath] which this library is built on top of.

## Extensions: vertical and horizontal

As Jon Sterling has recently emphasized [@sterling2023geometry], homotopy type theory allows us to seamlessly move between objects _over_ a type $B$ and maps from $B$ into a universal (classifying) type, and that this facility simplifies our access to Grothendieck's _relative point of view_. If we have a morphism $E \to B$ then we can view it as a type family of fibers. And if we have a morphism $f:B\to \mathcal{U}$ into a type of types, we can form the type $E\defeq \sum_{x:B}f(x)$ and the projection map $E\to B$.

Fix a connected 1-type $BG$ with chosen point $*:BG$ (i.e. a group $G$) and a connected 2-type $B$ with a chosen point $x:B$.

Following Myers, we define the type of extensions of $B$ by $G$ to consist of

* a type $E$ with point $e:E$
* a map $p:E\to B$ and a proof of pointedness, i.e. a term $p(e)=_B x$
* a term $F:\prod_{y:B}||\fib_p(y)=BG||_{-1}$ that all the fibers of $p$ are merely equivalent to $BG$.

We can then form the _fiber sequence_ $$BG\dottol{i} E\dottol{p} B$$ where $i$ is a specified equivalence of $BG$ with the fiber over $x$.



## Groups

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

open import foundation.dependent-identifications public
open import foundation.action-on-identifications-functions
open import foundation.dependent-pair-types
open import foundation.transport-along-higher-identifications
open import foundation.transport-along-identifications
open import foundation.universe-levels

open import foundation-core.equivalences
open import foundation-core.function-types
open import foundation-core.homotopies
open import foundation-core.identity-types

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

