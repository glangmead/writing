```agda
{-# OPTIONS --without-K --no-exact-split --no-import-sorts --auto-inline -WnoWithoutKFlagPrimEraseEquality #-}

module manifold_equivalences where

open import foundation.universe-levels
open import foundation.unit-type
open import foundation-core.identity-types
open import synthetic-homotopy-theory.circle
open import synthetic-homotopy-theory.pushouts
open import foundation.dependent-pair-types
open import foundation.double-arrows
open import synthetic-homotopy-theory.coforks
open import synthetic-homotopy-theory.coequalizers

data mys1_zero : UU lzero where
  v-mys1 : mys1_zero

edge-s1 : double-arrow lzero lzero
edge-s1 = make-double-arrow (point v-mys1) (point v-mys1)

mys1 : UU lzero
mys1 = standard-coequalizer edge-s1

mys1_s1 : mys1 → 𝕊¹
mys1_s1 x = base-𝕊¹

s1_mys1 : 𝕊¹ → mys1
s1_mys1 base-𝕊¹ = (map-cofork edge-s1 (cofork-standard-coequalizer edge-s1)) v-mys1

-- C4: the set of vertices
data C4-zero : UU lzero where
    c1-C4 c2-C4 c3-C4 c4-C4 : C4-zero

-- C4: the set of edges
data C4-one : UU lzero where
    e12-C4 e23-C4 e34-C4 e41-C4 : C4-one

-- C4: the source map from edge to vertex
src-C4 : C4-one → C4-zero
src-C4 e12-C4 = c1-C4 -- c1 --e12--> c2
src-C4 e23-C4 = c2-C4 -- c2 --e12--> c3
src-C4 e34-C4 = c3-C4 -- c3 --e12--> c4
src-C4 e41-C4 = c4-C4 -- c4 --e12--> c1

-- C4: the target map from edge to vertex
trg-C4 : C4-one → C4-zero
trg-C4 e12-C4 = c2-C4 -- c1 --e12--> c2
trg-C4 e23-C4 = c3-C4 -- c2 --e12--> c3
trg-C4 e34-C4 = c4-C4 -- c3 --e12--> c4
trg-C4 e41-C4 = c1-C4 -- c4 --e12--> c1

-- the double-arrow packaging of the src/trg maps
graph-C4 : double-arrow lzero lzero
graph-C4 = make-double-arrow src-C4 trg-C4

-- the higher type: form the homotopy coequalizer of the graph data
C4 : UU lzero
C4 = standard-coequalizer graph-C4

-- 
-- A 2-type, the Octahedron
-- 

-- Octahedron: the set of vertices
data OO-zero : UU lzero where
    w b r g o y : OO-zero

-- Octahedron: the set of edges
data OO-one-set : UU lzero where
    wb wr wg wo yb yr yg yo br rg go ob : OO-one-set

-- Octahedron: the source map of edges
src-OO1 : OO-one-set → OO-zero
src-OO1 wb = w
src-OO1 wr = w
src-OO1 wg = w
src-OO1 wo = w
src-OO1 yb = y
src-OO1 yr = y
src-OO1 yg = y
src-OO1 yo = y
src-OO1 br = b
src-OO1 rg = r
src-OO1 go = g
src-OO1 ob = o

-- Octahedron: the target map of edges
trg-OO1 : OO-one-set → OO-zero
trg-OO1 wb = b
trg-OO1 wr = r
trg-OO1 wg = g
trg-OO1 wo = o
trg-OO1 yb = b
trg-OO1 yr = r
trg-OO1 yg = g
trg-OO1 yo = o
trg-OO1 br = r
trg-OO1 rg = g
trg-OO1 go = o
trg-OO1 ob = b

edges-OO : double-arrow lzero lzero
edges-OO = make-double-arrow src-OO1 trg-OO1

-- Octahedron: 1-skeleton by forming the pushout of the edge src-trg maps
OO1 : UU lzero
OO1 = standard-coequalizer edges-OO

-- Faces of the octahedron
data OO-two-set : UU lzero where
    wbr wrg wgo wob ybo yrb ygr yog : OO-two-set

-- Octahedron: the target map of faces (with codomain loops in OO1)
trg-OO2 : OO-two-set → (Σ OO1 (λ x → (Id x x)))
trg-OO2 wbr = ((map-cofork edges-OO (cofork-standard-coequalizer edges-OO)) w) , refl
trg-OO2 wrg = ((map-cofork edges-OO (cofork-standard-coequalizer edges-OO)) w) , refl
trg-OO2 wgo = ((map-cofork edges-OO (cofork-standard-coequalizer edges-OO)) w) , refl
trg-OO2 wob = ((map-cofork edges-OO (cofork-standard-coequalizer edges-OO)) w) , refl
trg-OO2 ybo = ((map-cofork edges-OO (cofork-standard-coequalizer edges-OO)) y) , refl
trg-OO2 yog = ((map-cofork edges-OO (cofork-standard-coequalizer edges-OO)) y) , refl
trg-OO2 ygr = ((map-cofork edges-OO (cofork-standard-coequalizer edges-OO)) y) , refl
trg-OO2 yrb = ((map-cofork edges-OO (cofork-standard-coequalizer edges-OO)) y) , refl

src-OO2 : OO-two-set → (Σ OO1 (λ x → (Id x x)))
src-OO2 wbr = ((map-cofork edges-OO (cofork-standard-coequalizer edges-OO)) w) , ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) wb) ∙ ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) br) ∙ (inv ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) wr))
src-OO2 wrg = ((map-cofork edges-OO (cofork-standard-coequalizer edges-OO)) w) , ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) wr) ∙ ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) rg) ∙ (inv ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) wg))
src-OO2 wgo = ((map-cofork edges-OO (cofork-standard-coequalizer edges-OO)) w) , ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) wg) ∙ ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) go) ∙ (inv ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) wo))
src-OO2 wob = ((map-cofork edges-OO (cofork-standard-coequalizer edges-OO)) w) , ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) wo) ∙ ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) ob) ∙ (inv ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) wb))
src-OO2 ybo = ((map-cofork edges-OO (cofork-standard-coequalizer edges-OO)) y) , ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) yb) ∙ (inv ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) ob)) ∙ (inv ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) yo))
src-OO2 yog = ((map-cofork edges-OO (cofork-standard-coequalizer edges-OO)) y) , ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) yo) ∙ (inv ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) go)) ∙ (inv ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) yg))
src-OO2 ygr = ((map-cofork edges-OO (cofork-standard-coequalizer edges-OO)) y) , ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) yg) ∙ (inv ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) rg)) ∙ (inv ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) yr))
src-OO2 yrb = ((map-cofork edges-OO (cofork-standard-coequalizer edges-OO)) y) , ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) yr) ∙ (inv ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) br)) ∙ (inv ((coh-cofork edges-OO (cofork-standard-coequalizer edges-OO)) yb))

faces-OO : double-arrow lzero lzero
faces-OO = make-double-arrow src-OO2 trg-OO2

OO : UU lzero
OO = standard-coequalizer faces-OO

-- todo: make sure we have (or construct) maps OO-zero -> OO1 -> OO
OO-skel-incl-0 : OO-zero → OO1
OO-skel-incl-0 = map-cofork edges-OO (cofork-standard-coequalizer edges-OO)

OO-skel-incl-1 : OO1 → OO
OO-skel-incl-1 = λ x → (map-cofork faces-OO (cofork-standard-coequalizer faces-OO) (x , refl))

-- todo: construct an isomorphism with the 2-sphere


```