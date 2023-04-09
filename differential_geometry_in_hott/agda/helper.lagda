This is it.
\begin{code}
{-# OPTIONS --without-K --cubical --flat-split #-}

module helper where

open import Cubical.Foundations.Id
open import Cubical.Algebra.Group.Base
\end{code}

\begin{code}
data circle : Type where
  point : circle
  loop : point ≡ point
\end{code}

\begin{code}
data nat : Type where
  zero : nat
  succ : nat -> nat
\end{code}

\begin{code}
data eil-mac (G : Group) (1g : G) (mult : G → G → G) : Type where
  embase : eil-mac
  emloop : G -> (embase ≡ embase)
  emloop-id : emloop 1g ≡ refl embase
  emloop-comp : (x y : G) → emloop (x mult y) ≡ (emloop x) ∙ (emloop y)
  emsquash : ∀ (x y : eil-mac) (p q : x ≡ y) (r s : p ≡ q) → r ≡ s
\end{code}