This is a formalization of the modalities and theorems from Mike Shulman's paper [_Brouwer's Fixed Point Theorem in Real-Cohesive Homotopy Type Theory_](https://arxiv.org/abs/1509.07584). 

```agda
{-# OPTIONS --without-K --cohesion --flat-split #-}

module cohesion where

-- open import Cubical.Foundations.Prelude
open import foundation.universe-levels
open import foundation-core.identity-types
open import foundation-core.functions using (id; _∘_)
open import foundation-core.homotopies using (_~_)
open import foundation-core.equivalences using (_≃_)
open import foundation-core.sections
open import foundation-core.retractions
open import foundation-core.cartesian-product-types
open import foundation-core.dependent-pair-types
open import foundation.function-extensionality
```

# Sharp

Sharp of a type: you can raise any term of type $A$ to the sharp to get a term of type $\sharp A$.

```agda
data ♯_ {ℓ : Level} (A : UU ℓ) : UU ℓ where
  _↑♯ : A → ♯ A
```

-- infixl 40 ♯_

Having something crisply in $\sharp A$ gets you something in $A$. The constructor is also the computation rule.

```agda
_↓♯ : {@♭ ℓ : Level} {@♭ A : UU ℓ} (@♭ xs : ♯ A) → A
(z ↑♯) ↓♯ = z
```

-- _foo_ : (some type)
-- x foo y = 

The computation rule which states that putting something in $\sharp A$ and then taking it out leaves it the same.

```agda
upper-then-lower : {@♭ ℓ : Level} {@♭ A : UU ℓ} (@♭ x : A) → ((x ↑♯) ↓♯) ＝ x
upper-then-lower x = refl
```

The ``uniquenes rule'' which states that moving something out of $\sharp A$ into $A$ then back leaves it unchanged.

```agda
lower-then-upper : {@♭ ℓ : Level} {@♭ A : UU ℓ} (@♭ xs : ♯ A) → ((xs ↓♯) ↑♯) ＝ xs
-- xs is of the form ys ↑♯ so we are asking for a term of (((ys ↑♯) ↓♯) ↑♯) = y ↑♯
lower-then-upper (ys ↑♯) = ap _↑♯ (upper-then-lower ys)
```

Functoriality of sharp: to sharp a function we remove the sharp from the argument, apply the function, then sharp the result. The context is cohesive. It amounts to moving the function past the up-sharp.

```agda
#→ : {ℓ : Level} {A B : UU ℓ} (f : A → B) → (♯ A ) → (♯ B)
#→ f (x ↑♯) = _↑♯ (f x)
```

Check two naturality conditions: that composing $♯f$ with $♯g$ is homotopic to $♯g∘f$, and that $♯f$ precomposed with ${}^♯$ is $f$ postcomposed with $(-)^♯$.

```agda
#→-respects-comp : {ℓ : Level} {A B C : UU ℓ} (f : A → B) (g : B → C) → 
  ((#→ g) ∘ (#→ f)) ~ (#→ (g ∘ f))
-- I need that (#→ g) ((#→ f) (x ↑♯)) has a path to #→ (g ∘ f x)
#→-respects-comp f g (x ↑♯) = refl

#→-respects-# : {ℓ : Level} {A B C : UU ℓ} (f : A → B) (x : A) → 
  (#→ f) (x ↑♯) ＝ ((f x) ↑♯)
#→-respects-# f x = refl
```

A type is codiscrete if sharp is an equivalence

```agda
is-codisc : {ℓ : Level} (A : UU ℓ) → UU ℓ
is-codisc A = A ≃ (♯ A)
```

Sharp-induction.

```agda
#-ind : 
  {ℓ : Level} {A : UU ℓ} (P : (♯ A) → UU ℓ) 
  (pf : (a : A) → is-codisc (P (a ↑♯))) 
  (f : (a : A) → (P (a ↑♯))) 
  → ((as : (♯ A)) → P as)
#-ind P pf f (a ↑♯) = (pr1 (pr1 (pr2 (pf a)))) ((f a) ↑♯)
```

Theorem 3.5. For any $A: \mathrm{Type}$, the type $♯ A$ is codiscrete.

```agda
#-is-codisc : {ℓ : Level} (A : UU ℓ) → is-codisc (♯ A)
#-is-codisc A = (_↑♯), ((#-inv , λ { ((a ↑♯) ↑♯) → refl }), (#-inv , λ { (a ↑♯) → refl }))
  where
  #-inv : ♯ (♯ A) → ♯ A
  #-inv ((a ↑♯) ↑♯) = a ↑♯ -- it does end up taking a twice-sharped thing to a once-sharped thing
```

Theorem 3.6. If B is cosdiscrete then precomposition with $(-)^\sharp$ is an equivalence $\sharp A → B \simeq A → B$. More generally (the dependent case) if $B:\sharp A → \mathrm{Type}$ has each $B(v)$ codiscrete, then precomposition with $(-)^\sharp$ is an equivalence $$\left(\prod_{(v:\sharp A)}B(v)\right) \simeq \left(\prod_{(x:A)}B(x^\sharp)\right)$$
```agda
#-is-left-adjoint-to-codisc-inclusion : {ℓ : Level} {A B : UU ℓ} (p : is-codisc B) → 
  ((♯ A) → B) ≃ (A → B)
-- pr1 (pr1 (pr2 p)) is the function back from #B to B
-- pr1 (pr1 (pr2 equiv-funext)) is the function from f ~ g to f = g
#-is-left-adjoint-to-codisc-inclusion p
  = (λ {f a → f (a ↑♯)}) , (
    ((λ {f (a ↑♯) → f a}) , λ f → refl) , 
    ((λ {f (a ↑♯) → f a}) , λ f → pr1 (pr1 (pr2 equiv-funext)) λ {(a ↑♯) → refl})
  )
```

The dependent version has an identical proof.

```agda
#-is-left-adjoint-to-codisc-inclusion-dep : {ℓ : Level} {A : UU ℓ} {B : ♯ A → UU ℓ} 
  (p : (as : ♯ A) → is-codisc (B as)) → ((as : ♯ A) → B as) ≃ ((a : A) → B (a ↑♯))
#-is-left-adjoint-to-codisc-inclusion-dep p 
  = (λ {f a → f (a ↑♯)}) , (
    ((λ {f (a ↑♯) → f a}) , λ f → refl) , 
    ((λ {f (a ↑♯) → f a}) , λ f → pr1 (pr1 (pr2 equiv-funext)) λ {(a ↑♯) → refl})
  )
```

The above proves that # is a monadic modality, and so he flies in some consequences from the HoTT book, chapter 7. For now I won't formalize those, hoping that the agda-unimath library will do it.

Theorem 3.7, 3.8 and 3.9 build up to the fact that # preserves pullbacks. 

Theorem 3.7: for any $x, y: A$, we have an equivalence $(x^\sharp = y^\sharp)\simeq \sharp(x=y)$ such that the following triangle commutes: 
$$(x=y)\xrightarrow[]{\mathrm{ap}_{(-)^\sharp}}(x^\sharp = y^\sharp)$$
$$(x^\sharp = y^\sharp) \simeq \sharp(x=y)$$
$$(x=y)\xrightarrow[]{(-)^\sharp}\sharp(x=y)$$
```agda
#-code : {ℓ : Level} {A : UU ℓ} (u : ♯ A) → (v : ♯ A) → (UU ℓ)
#-code (u ↑♯) (v ↑♯) = ♯ (u ＝ v)

#-code-section : {ℓ : Level} {A : UU ℓ} → (u : ♯ A) → #-code u u
#-code-section = #-ind (λ u → #-code u u) (λ a → #-is-codisc (a ＝ a)) λ a → refl ↑♯
```

 