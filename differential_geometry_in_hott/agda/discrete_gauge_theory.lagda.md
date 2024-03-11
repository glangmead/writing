---
header-includes: |
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Libre+Baskerville&family=Quattrocento:wght@400">
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
summary: In-progress masters thesis defining connections, curvature, and Chern-Weil theory in the discrete setting of homotopy type theory.
date: 2023-12-20
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
\newcommand{\shapez}{\text{∫}{}_{0}}
\newcommand{\shapeo}{\text{∫}{}_{1}}
\newcommand{\shapet}{\text{∫}{}_{2}}
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
\newcommand{\Gg}{\mathscr{G}}
\newcommand{\Aa}{\mathscr{A}}
\newcommand{\Bb}{\mathscr{B}}
\newcommand{\pathover}[1]{\xrightarrow[{#1}]{=}}

```agda
{-# OPTIONS --cubical #-}

module discrete_gauge_theory where

open import Agda.Builtin.Cubical.Equiv
open import Cubical.Foundations.Function
open import Cubical.Foundations.Prelude
open import Cubical.Foundations.Pointed
open import Cubical.Foundations.Univalence

open import Cubical.HITs.SetTruncation
open import Cubical.Foundations.Isomorphism
-- open import Cubical.HITs.Pushout
open import Cubical.HITs.S1
-- open import Cubical.HITs.S2

private
  variable ℓ ℓ' : Level

data FourGon : Type where
  v1 : FourGon
  v2 : FourGon
  v3 : FourGon
  v4 : FourGon
  e12 : v1 ≡ v2
  e23 : v2 ≡ v3
  e34 : v3 ≡ v4
  e41 : v4 ≡ v1

rot4cw : FourGon → FourGon
rot4cw v1 = v2
rot4cw v2 = v3
rot4cw v3 = v4
rot4cw v4 = v1
rot4cw (e12 i) = e23 i
rot4cw (e23 i) = e34 i
rot4cw (e34 i) = e41 i
rot4cw (e41 i) = e12 i

rot4ccw : FourGon → FourGon
rot4ccw v1 = v4
rot4ccw v2 = v1
rot4ccw v3 = v2
rot4ccw v4 = v3
rot4ccw (e12 i) = (sym e41) (~ i)
rot4ccw (e23 i) = (sym e12) (~ i)
rot4ccw (e34 i) = (sym e23) (~ i)
rot4ccw (e41 i) = (sym e34) (~ i)

rot4cwccw : (rot4ccw ∘ rot4cw) ≡ (idfun FourGon)
rot4cwccw i v1 = v1
rot4cwccw i v2 = v2
rot4cwccw i v3 = v3
rot4cwccw i v4 = v4
rot4cwccw i (e12 i₁) = e12 i₁
rot4cwccw i (e23 i₁) = e23 i₁
rot4cwccw i (e34 i₁) = e34 i₁
rot4cwccw i (e41 i₁) = e41 i₁

rot4ccwcw : (rot4cw ∘ rot4ccw) ≡ (idfun FourGon)
rot4ccwcw i v1 = v1
rot4ccwcw i v2 = v2
rot4ccwcw i v3 = v3
rot4ccwcw i v4 = v4
rot4ccwcw i (e12 i₁) = e12 i₁
rot4ccwcw i (e23 i₁) = e23 i₁
rot4ccwcw i (e34 i₁) = e34 i₁
rot4ccwcw i (e41 i₁) = e41 i₁

rot4 : FourGon ≃ FourGon
rot4 = isoToEquiv rot4iso
  where
  rot4iso : Iso FourGon FourGon
  Iso.fun rot4iso = rot4cw
  Iso.inv rot4iso = rot4ccw
  Iso.rightInv rot4iso = funExt⁻ rot4ccwcw
  Iso.leftInv rot4iso = funExt⁻ rot4cwccw

rot4equiv : FourGon ≡ FourGon
rot4equiv = ua rot4

BAut1 : (base : Type₀) → Type₁
BAut1 A = Σ[ X ∈ Type₀ ] ∥ X ≡ A ∥₂
  
PolygonBundleClassifier : Type₁
PolygonBundleClassifier = BAut1 FourGon

data Octhdrn : Type where
  w : Octhdrn
  y : Octhdrn
  b : Octhdrn
  g : Octhdrn
  r : Octhdrn
  o : Octhdrn
  wb : w ≡ b
  wg : w ≡ g
  wr : w ≡ r
  wo : w ≡ o
  yb : y ≡ b
  yg : y ≡ g
  yr : y ≡ r
  yo : y ≡ o
  br : b ≡ r
  rg : r ≡ g
  go : g ≡ o
  ob : o ≡ b
  wbr : wb ∙ br ∙ (symP wr) ≡ refl
  wrg : wr ∙ rg ∙ (symP wg) ≡ refl
  wgo : wg ∙ go ∙ (symP wo) ≡ refl
  wob : wo ∙ ob ∙ (symP wb) ≡ refl
  ybr : yb ∙ br ∙ (symP yr) ≡ refl
  yrg : yr ∙ rg ∙ (symP yg) ≡ refl
  ygo : yg ∙ go ∙ (symP yo) ≡ refl
  yob : yo ∙ ob ∙ (symP yb) ≡ refl

PolygonTangent : Octhdrn → PolygonBundleClassifier
PolygonTangent w = FourGon , ∣ (λ i → FourGon) ∣₂
PolygonTangent y = FourGon , ∣ (λ i → FourGon) ∣₂
PolygonTangent b = FourGon , ∣ (λ i → FourGon) ∣₂
PolygonTangent g = FourGon , ∣ (λ i → FourGon) ∣₂
PolygonTangent r = FourGon , ∣ (λ i → FourGon) ∣₂
PolygonTangent o = FourGon , ∣ (λ i → FourGon) ∣₂
PolygonTangent (wb i) = (refl i)
PolygonTangent (wg i) = (refl i)
PolygonTangent (wr i) = (refl i)
PolygonTangent (wo i) = (refl i)
PolygonTangent (yb i) = (refl i)
PolygonTangent (yg i) = (refl i)
PolygonTangent (yr i) = (refl i)
PolygonTangent (yo i) = (refl i)
PolygonTangent (br i) = (rot4equiv i)
PolygonTangent (rg i) = (refl i)
PolygonTangent (go i) = (refl i)
PolygonTangent (ob i) = (refl i)

```




