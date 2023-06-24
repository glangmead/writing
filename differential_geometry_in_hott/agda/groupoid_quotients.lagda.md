This is a formalization of groupoid quotients, as HITs. Examples will include deloopings of groups, and manifolds given by chart data.

\newcommand{\ff}{\mathbb{F}}

```agda
{-# OPTIONS --without-K --cohesion --flat-split #-}

module groupoid_quotients where

open import foundation-core.1-types
open import foundation-core.dependent-pair-types

open import foundation.universe-levels
open import foundation.surjective-maps

open import category-theory.precategories
open import category-theory.categories
open import category-theory.pregroupoids
open import category-theory.groupoids

open import group-theory.higher-groups

-- open import univalent-combinatorics.finite-types
```

Manifolds together with an open cover will be specified by the following data:

- A set $X$ (the manifold)
- An index set $I$ from $\ff$, the universe of finite types
- A type family $(U, f)$ over $I$ of sets where $U(i)$ is a set and $f(i) : U(i) \to X$ is a map
- A proof that the union of all $U(i)$ is equivalent to $X$

Later we can ask what extra conditions we can define on the $U(i)$ for it to be the case that bundles are automatically trivializable when pulled back to them. (Contractible shape?)

# 0-type with cover

```agda
module GroupoidQuotients (l : Level) where

record CoveredSet l : UU (lsuc l) where
  field
    X : Set l
    I : Set l
    U : I → Set l
    f : (i : I) → ((U i) → X)
    jointsur : is-surjective {l} {l} {Σ I U} {X} ev-pair λ {i ui → (f i) ui}
      
-- then the objects of the precategory will be (x, U_i) such that x : U_i
-- the arrows will be (x, U_i, U_j) such that x : U_i and x : U_j

-- Set-Precat : (l : Level) → Precat (lsuc l) l
-- pr1 (Set-Precat l) = Set l
-- pr1 (pr2 (Set-Precat l)) = hom-Set
-- pr1 (pr1 (pr2 (pr2 (Set-Precat l)))) g f = g ∘ f
-- pr2 (pr1 (pr2 (pr2 (Set-Precat l)))) h g f = refl
-- pr1 (pr2 (pr2 (pr2 (Set-Precat l)))) x = id
-- pr1 (pr2 (pr2 (pr2 (pr2 (Set-Precat l))))) f = refl
-- pr2 (pr2 (pr2 (pr2 (pr2 (Set-Precat l))))) f = refl
```

# Groups

```agda
-- an ∞-Group BG
-- BG is 1-truncated
-- if we want, we can use obj-groupoid-1-Type of BG to get a groupoid object
```
