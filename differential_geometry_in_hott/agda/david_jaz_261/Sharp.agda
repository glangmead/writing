{-# OPTIONS --without-K --rewriting --cohesion #-}

module Sharp where
  open import Basics
  open import Flat

  open import lib.NType2
  open import lib.Equivalence2
  open import lib.types.Modality


  -- --------------------------------------------------------------------------------------
  -- Postulating the ♯ Modality
  -- --------------------------------------------------------------------------------------
  postulate
    -- Here, I've tried to implement the rules for ♯ as in Shulman as closely as possible
    -- to the sequents in Figure 3 of Section 3.

    -- I'm pretty convinced now that this approach will work
    -- However, as currently (02/18/19) rewrite rules do not see the ♭ modality,
    -- it is not fully operational (and, clearly, has not been cleaned up).

    -- The litmus is proving the lexness of ♯ along the lines of Shulman 3.7

    {-
      We implement the ♯ typing operations in two ways.

      First, naively, as follows:
    -}

    -- Rule 1/5: Given a type A, we may form ♯ A
    ♯ : {i : ULevel} → Type i → Type i

    -- Rule 2/5: Given an a : A, we may form a^♯ : ♯ A
    _^♯ : {i : ULevel} {A : Type i} → A → ♯ A

    -- Rule 3/5: Given a crisp a :: ♯ A, we may form a ↓♯ : A
    _↓♯ : {@♭ i : ULevel} {@♭ A : Type i} → ♯ A ::→ A

    {-
      Rule 4/5
      Given a :: A, we have that (a ^♯) ↓♯ ≡ a.

      Δ | ∙ ⊢ a : A
      -------------------------
      Δ | Γ ⊢ (a ^♯) ↓♯ ≡ a : A

      A and a are crisp, but we can have any other context Γ appear
      which is fine, we just don't mention it.
    -}
    ^↓♯ : {@♭ i : ULevel} {@♭ A : Type i} (@♭ a : A)
          → ((a ^♯) ↓♯) ↦ a
    {-# REWRITE ^↓♯ #-}

    {-
      Rule 5/5
      Given a : ♯ A in any context, we have (a ↓♯) ^♯ ≡ a

      Δ | Γ ⊢ a : ♯ A
      ---------------
      Δ | Γ ⊢ (a ↓♯) ^♯ ≡ a : ♯ A

      Here we can do this in any context, but for agda that might mean
      "factoring through" the ptwise operations first...

      [WARNING] This implementation needs A to be crisp, and so doesn't
                express the above sequent (I think...)
    -}
    ↓^♯ : {@♭ i : ULevel} {@♭ A : Type i} (@♭ a : ♯ A)
          → ((a ↓♯) ^♯) ↦ a
    {-# REWRITE ↓^♯ #-}

    {-
      Now, we will postulate "pointwise" versions of the above operations which 
      take in an additional crisp "context" Γ or Δ. The name Γ or Δ is chosen to match
      the role of the explicit "context" with its analogy in Shulman.

      In each of these, the context either becomes cohesive or not, according to the
      rules from Shulman (which are reproduced here for comparison).
    -}
    
    {-
      Rule 1/5, pointwise version
      If one has a crisp context Γ and a type A which depends crisply on Γ,
      Then one may form ♯ A which depends cohesively on Γ.

      Or, read backwards, to construct ♯ A in the context Γ, it suffices to assume
      That every variable x : Γ appearing in A is crisp.

      Δ, Γ | ∙ ⊢ A : Type
      -------------------
      Δ | Γ  ⊢ ♯ A : Type
    -}
    -- compare to ♯ : {i : ULevel} → Type i → Type i
    ♯-ptwise : {@♭ i : ULevel} {@♭ Γ : Type i} {j : ULevel}
               (A : Γ ::→ Type j)
               → (Γ → Type j)

    {-
      We relate the pointwise # with the naive one in the obvious way.

      That is, if we apply a pointwise operation to a crisp variable of the "context",
      this is the same as applying the naive operation pointwise to that variable.
    
      We take this sameness to be a judgemental equality, implemented as a rewrite rule.
    -}

    ♯-law : {@♭ i : ULevel} {@♭ Γ : Type i} {j : ULevel}
             (A : Γ ::→ Type j) (@♭ x : Γ)
             → (♯-ptwise A) x ↦ ♯ (A x)
    {-# REWRITE ♯-law #-}

    {-
      Rule 2/5, pointwise version
      If one has a : A in a crisp context Γ, 
      one may form a ^♯ : ♯ A in the cohesive context Γ.

      Δ, Γ | ∙ ⊢ a : A
      -------------------
      Δ | Γ ⊢ a ^♯ : ♯ A
    -}
    ^♯-ptwise : {@♭ i : ULevel} {@♭ Γ : Type i} {j : ULevel}
                {A : Γ ::→ Type j} (a : (@♭ x : Γ) → A x)
                → (x : Γ) → (♯-ptwise A) x

    {-
      Relate the pointwise ^# with the naive one
    -} 
    -- ^♯-law : {@♭ i : ULevel} {@♭ Γ : Type i} {j : ULevel}
    --           {A : Γ ::→ Type j} (a : (@♭ x : Γ) → A x)
    --           (@♭ x : Γ) → (^♯-ptwise a) x ↦ ((a x) ^♯)
    -- {-# REWRITE ^♯-law #-}

    {-
      Rule 3/5, pointwise version
      If one has a :: ♯ A in a crisp context Γ, 
      one may form a ↓♯ : A, also in a crisp context Γ

      Δ | ∙ ⊢ a : ♯ A
      ---------------
      Δ | Γ ⊢ a ↓♯ : A

      It seems to me that to have a crisp variable of ♯ A requires A to be crisp...
      But this pointwise definition one doesn't. It just requires that the context 
      is crisp.
    -}
    ↓♯-ptwise : {@♭ i : ULevel} {@♭ Δ : Type i} {j : ULevel} {A : Δ ::→ Type j}
                (a : (@♭ x : Δ) → (♯-ptwise A) x)
                → (@♭ x : Δ) → A x

    {-
      Rule 4/5, pointwise version
    -}
    ^↓♯-ptwise : {@♭ i : ULevel} {@♭ Γ : Type i} {j : ULevel}
                {A : Γ ::→ Type j} (a : (@♭ x : Γ) → A x) (@♭ x : Γ)
                → (((^♯-ptwise a) x) ↓♯) ↦ a x

    {-
      Rule 5/5, pointwise version
      I'm having a difficulty implementing the ptwise version of ↓^♯ that will fire
      whether or not A and a are crisp. 
      I think this is because if they are, it is a special case of the ↓^♯ rule,
      But it is not strictly more general, since it keeps track of the "explicit context" Δ

      Or, if I take everything in ↓♯-ptwise to be crisp, then it doesn't typecheck at this 
      generality.
    -}
    ↓^♯-ptwise : {@♭ i : ULevel} {j : ULevel} {@♭ Δ : Type i} {A : Δ ::→ Type j}
                 (a : (@♭ x : Δ) → (♯-ptwise A) x) (@♭ x : Δ)
                 → (((↓♯-ptwise a) x) ^♯) ↦ a x
    --                                      ^^^ : (♯-ptwise A) x
    --                ^^^^^^^^^^^               : (@♭ x : Δ) → A x
    --              ^^^^^^^^^^^^^^^^            : A x
    --             ^^^^^^^^^^^^^^^^^^^^^        : # (A x)
    {-# REWRITE ↓^♯-ptwise #-} 
    
    -- [WARNING] When normalizing λ A x → (^♯-ptwise a) x, the rewrite ^♯-law will fire
    -- turning it into ((a x) ^♯), which is ill typed on cohesive x : Γ (and the typechecker 
    -- complains)

    ↓♯-law : {@♭ i : ULevel} {@♭ Δ : Type i} {@♭ j : ULevel} {@♭ A : Δ ::→ Type j}
              (@♭ a : (@♭ x : Δ) → (♯-ptwise A) x)
              (@♭ x : Δ) → (↓♯-ptwise a) x ↦ ((a x) ↓♯)
    {-# REWRITE ↓♯-law #-}


    {-
      Finally, we define some convenient notation for the ptwise operations.
      
      To see how these work in practice, see below.
    -}
  syntax ♯-ptwise (λ γ → A) ctx = let♯ γ ::= ctx in♯-♯ A

  syntax ^♯-ptwise (λ γ → a) ctx = let♯ γ ::= ctx in♯ a ^^♯

  ^♯-ptwise-explicit : {@♭ i : ULevel} {@♭ Γ : Type i} {j : ULevel}
                       (A : Γ ::→ Type j) (a : (@♭ x : Γ) → A x)
                       → (x : Γ) → (♯-ptwise A) x
  ^♯-ptwise-explicit A = ^♯-ptwise {A = A}
  syntax ^♯-ptwise-explicit A (λ γ → t) ctx = let♯ γ ::= ctx in♯ t ^^♯-in-family A

      
  syntax ↓♯-ptwise (λ γ → a) ctx = let♯ γ ::= ctx in♯ a ↓↓♯

  -- ----------------------------------------------------------------------------------------------
  -- End of Postulates
  -- ----------------------------------------------------------------------------------------------


  -- We have to leave the universe levels out and assume they are crisp,
  -- otherwise the "context record" becomes large.
  -- It shouldn't matter tho, since ULevel is discrete.
  module _ {@♭ i j : ULevel} where
    private 
      record Γ : Type (lsucc (lmax i j)) where
        constructor ctx
        field
          ᶜA   : Type i
          ᶜB   : Type j
          ᶜf   : ᶜA → ᶜB
          ᶜa   : ♯ ᶜA
      open Γ

    -- Functoriality of ♯
    ♯→ : {A : Type i} {B : Type j}
       (f : A → B) → (♯ A) → (♯ B)
    ♯→ {A} {B} f a =
      let♯ γ ::= (ctx A B f a) in♯
        (ᶜf γ (ᶜa γ ↓♯)) ^^♯ -- (f (a ↓♯)) ^♯

    -- The naturality square of the unit (judgemental!)
    ♯→-nat : {A : Type i} {B : Type j} (f : A → B)
             (a : A) → ((f a) ^♯) == ((♯→ f) (a ^♯))
    ♯→-nat {A} {B} f a = refl

  -- ♯-elmination (Shulman Theorem 3.4)
  {-
    The general form of these definitions is:
    Take the context (or the part of the context) you want to make crisp,
    and make a private record Γ with fields ᶜx for every variable x in the context.
    Then use the let♯ notation to crispify in the context.
  -}
  module _ {@♭ i j : ULevel} where
    private
      record Γ : Type (lsucc (lmax i j)) where
        constructor ctx
        field
          ᶜA : Type i
          ᶜB : (♯ ᶜA) → Type j
          ᶜf : (a : ᶜA) → ♯ (ᶜB (a ^♯))
          ᶜa : ♯ ᶜA
      open Γ
      
    ♯-elim : {A : Type i} (B : ♯ A → Type j)
             (f : (a : A) → ♯ (B (a ^♯)))
             → ((a : ♯ A) → ♯ (B a))
    ♯-elim {A} B f a =
      let♯ γ ::= (ctx A B f a) in♯
        (ᶜf γ (ᶜa γ ↓♯)) ↓♯ ^^♯
    syntax ♯-elim B (λ x → t) a = let♯ x ^♯:= a in♯ t in-family B

    -- Elimination with implicit family,
    ♯-elim' : {A : Type i} {B : ♯ A → Type j}
              (f : (a : A) → ♯ (B (a ^♯)))
              → ((a : ♯ A) → ♯ (B a))
    ♯-elim' {A} {B} f a = ♯-elim {A} B f a 
    syntax ♯-elim' (λ x → t) a = let♯ x ^♯:= a in♯ t

    -- Crisp eliminators
    ♯-elim-crisp : {@♭ A : Type i} (@♭ B : ♯ A → Type j)
                   (f : (@♭ a : A) → ♯ (B (a ^♯)))
                   → (@♭ a : ♯ A) → ♯ (B a)
    ♯-elim-crisp B f a =
      let♯ ᶜf ::= f in♯ ((ᶜf (a ↓♯)) ↓♯) ^^♯
    syntax ♯-elim-crisp B (λ x → t) a = let♯ x ^♯::= a in♯ t in-family B
    
    -- β holds judgementally :)
    ♯-elim-β : {A : Type i} {B : ♯ A → Type j}
               (f : (a : A) → ♯ (B (a ^♯))) (a : A)
               → (♯-elim B f (a ^♯)) == (f a)
    ♯-elim-β f a = refl

    -- ♯-elim is inverse to precomposition by _^♯
    -- This proves that ♯ is a uniquely eliminating modality
    ♯-universal : {A : Type i} (B : ♯ A → Type j)
                  → ((a : ♯ A) → ♯ (B a)) ≃ ((a : A) → ♯ (B (a ^♯)))
    ♯-universal {A} B = equiv to fro to-fro fro-to
      where
        to : (f : (a : ♯ A) → ♯ (B a))
             → (a : A) → ♯ (B (a ^♯))
        to f = f ∘ _^♯

        fro : ((a : A) → ♯ (B (a ^♯))) → ((a : ♯ A) → ♯ (B a))
        fro = ♯-elim B

        to-fro : (f : (a : A) → ♯ (B (a ^♯))) → to (fro f) == f
        to-fro f = refl

        fro-to : (f : (a : ♯ A) → ♯ (B a)) → fro (to f) == f
        fro-to f = refl

  -- A type is codiscrete if the inclusion a ↦ a ^♯ is an equivalence.
  _is-codiscrete : {i : ULevel} (A : Type i) → Type i
  A is-codiscrete = (_^♯ {A = A}) is-an-equiv

  codisc-eq : {i : ULevel} {A : Type i} (p : A is-codiscrete) → A ≃ (♯ A)
  codisc-eq = _^♯ ,_

  un♯ : {i : ULevel} {A : Type i} (p : A is-codiscrete) → ♯ A → A
  un♯ p = <– (codisc-eq p)

  _is-codisc-is-a-prop : {i : ULevel} (A : Type i) → (A is-codiscrete) is-a-prop
  A is-codisc-is-a-prop = is-equiv-is-prop

  -- Shulman Theorem 3.5
  -- ♯ A is codiscrete.
  module _ {@♭ i : ULevel} where
    private
      record Γ : Type (lsucc i) where
        constructor ctx
        field
          ᶜA : Type i
          ᶜa : ♯ (♯ ᶜA)
      open Γ
    
    ♯-is-codiscrete : (A : Type i) → (♯ A) is-codiscrete
    ♯-is-codiscrete = λ A →  
      (_^♯ {A = ♯ A}) is-an-equivalence-because fro is-inverse-by to-fro and fro-to
      where
        fro : {A : Type i} → ♯ (♯ A) → ♯ A
        fro {A} a = let♯ γ ::= (ctx A a) in♯ ((ᶜa γ ↓♯) ↓♯) ^^♯ 

        to-fro : {A : Type i} → (a : ♯ (♯ A)) → ((fro a) ^♯) == a
        to-fro a = refl

        fro-to : {A : Type i} → (a : ♯ A) → fro (a ^♯) == a
        fro-to a = refl

  {-
  module _ {@♭ i j : ULevel} {@♭ i j : Type i} where
    private
      record Γ : Type (lsucc (lmax i j)) where
        constructor ctx
        field
          ᶜA : Δ ::→ Type j
          ᶜx : Δ
      open Γ
    ♯-ptwise-is-codiscrete : (A : Δ ::→ Type j) (x : Δ)
                             → ((♯-ptwise A) x) is-codiscrete
    ♯-ptwise-is-codiscrete = λ A x → 
      {!(_^\# {A = (♯-ptwise A) x}) is-an-equivalence-because fro is-inverse-by to-fro and fro-to!}
      where
        module _ {A : Δ ::→ Type j} {x : Δ} where
          fro : ♯ ((♯-ptwise A) x) → (♯-ptwise A) x
          fro = {!!}
  
          -- to-fro : (a : ♯ ((♯-ptwise A) x)) → ((fro a) ^♯) == a
         -- to-fro = {!!}

         -- fro-to : ∀ a → fro (a ^♯) == a
         -- fro-to = {!!}
    -}

  module _ {@♭ i j : ULevel} where
    record CTX-uncrisp {@♭ A : Type i} : Type (lsucc (lmax i j)) where
      constructor ctx
      field
        ᶜB : A → Type j
        ᶜf : (@♭ a : A) → ♯ (ᶜB a)
        ᶜa : A
        
    uncrisp : {@♭ A : Type i} (B : A → Type j)
              → ((@♭ a : A) → ♯ (B a))
              → ((a : A) → ♯ (B a))
    uncrisp B f a =
      let♯ γ ::= (ctx B f a) in♯
        (((ᶜf γ) (ᶜa γ)) ↓♯) ^^♯
      where open CTX-uncrisp

  Π-codisc : {@♭ i j : ULevel} {A : Type i} (B : A → Type j)
                 → ((a : A) → ♯ (B a)) is-codiscrete
  Π-codisc {A = A} B =
    _^♯ is-an-equivalence-because
      (λ f a → let♯ g ^♯:= f in♯ (g a)) is-inverse-by
        (λ _ → refl) and (λ _ → refl)

  -- The map ♯ (x == y) → (x == y) for x y : ♯ A, following RSS Lemma 1.25
  module _ {@♭ i : ULevel} {A : Type i} {x y : ♯ A} where
    private
      constx : ♯ (x == y) → ♯ A
      constx _ = x
        
      consty : ♯ (x == y) → ♯ A
      consty _ = y

      lemma₀ : (constx ∘ _^♯) == (consty ∘ _^♯)
      lemma₀ = λ= (λ p → p)

      lemma₁ : constx == consty
      lemma₁ = -- constx == consty because they are equalized by _^♯, via the universal prop of ♯
        –>-is-inj (♯-universal (λ (_ : ♯ (x == y)) → A)) constx consty lemma₀

    ♯-=-retract : ♯ (x == y) → x == y
    ♯-=-retract p = app= lemma₁ p

  -- To prove a type is an equivalence, it suffices to give a retract of _^♯
  _is-codiscrete-because_is-retract-by_ : {@♭ i : ULevel} (A : Type i)
                                          (r : ♯ A → A) (p : (a : A) → r (a ^♯)  == a)
                                          → A is-codiscrete
  A is-codiscrete-because r is-retract-by p =
    (_^♯ {A = A}) is-an-equivalence-because r is-inverse-by
        (λ a → -- Given an a : ♯ A, we will show ♯ ((r a)^♯ == a)
             (let♯ b ^♯:= a in♯ -- We suppose a is b ^♯
                   ((ap _^♯ (p b)) ^♯) -- apply p to b to get r (b ^♯) == b,
                                      -- then apply _^♯ to get (r b^♯)^♯ == b^♯
                                      -- then hit it with _^♯ to get ♯ ((r b^♯)^♯ == b^♯)
              in-family (λ (a : ♯ A) → ((r a) ^♯) == a) -- which is ♯ ((r a)^♯ == a) by our hypothesis,
             )  -- and we can strip the ♯ becacuse equality types in ♯ are codiscrete.
          |> (♯-=-retract {x = (r a) ^♯} {a})
        )
      and p

  -- We follow RSS Lemma 1.25
  =-is-codiscrete : {@♭ i : ULevel} {A : Type i} (x y : ♯ A)
                    → (x == y) is-codiscrete
  =-is-codiscrete {A = A} x y =
   (x == y) is-codiscrete-because ♯-=-retract is-retract-by proof
    where
      abstract -- UNFINISHED
        proof : (p : x == y) → (♯-=-retract (p ^♯)) == p
        proof = trust-me
          where postulate trust-me : (p : x == y) → (♯-=-retract (p ^♯)) == p

  ♯-modality : {@♭ i : ULevel} → Modality i
  ♯-modality {i} = record
                 { is-local = _is-codiscrete
                 ; is-local-is-prop = λ {A} → A is-codisc-is-a-prop
                 ; ◯ = ♯
                 ; ◯-is-local = λ {A} → ♯-is-codiscrete A
                 ; η = _^♯
                 ; ◯-elim = λ {A} {B} p f a → un♯ (p a) (♯-elim B (λ a → (f a) ^♯) a)
                 ; ◯-elim-β = λ {A} {B} p f a → <–-inv-l (codisc-eq (p (a ^♯))) (f a)          
                 ; ◯-=-is-local = =-is-codiscrete
                 }

  _is-infinitesimal : {@♭ i : ULevel} → Type i → Type i
  _is-infinitesimal = Modality.is-◯-connected ♯-modality

  ♯→e : {@♭ i : ULevel} {A B : Type i} → A ≃ B → (♯ A) ≃ (♯ B)
  ♯→e = Modality.◯-emap ♯-modality

  ♯-Σ : ∀ {@♭ i} {A : Type i} (B : A → Type i)
        → A is-codiscrete → ((a : A) → (B a) is-codiscrete)
        → (Σ A B) is-codiscrete
  ♯-Σ {i} = (Modality.Σ-is-local {i}) ♯-modality

  ♯-Π : ∀ {@♭ i} {A : Type i} {B : A → Type i} (w : (a : A) → (B a) is-codiscrete)
        → (Π A B) is-codiscrete
  ♯-Π {i} = (Modality.Π-is-local {i}) ♯-modality

  -- Theorem 6.22 of Shulman
  -- Points of ♯ A are the points of A, and ♯ of the points of A is ♯ A.
  ♭♯-eq : {@♭ i : ULevel} {@♭ A : Type i} → ♭ (♯ A) ≃ ♭ A
  ♭♯-eq {A = A} = equiv to fro to-fro fro-to
    where
      to : ♭ (♯ A) → ♭ A
      to (a ^♭) = (a ↓♯) ^♭

      fro : ♭ A → ♭ (♯ A)
      fro (a ^♭) = (a ^♯) ^♭

      to-fro : (a : ♭ A) → to (fro a) == a
      to-fro (a ^♭) = refl

      fro-to : (a : ♭ (♯ A)) → fro (to a) == a
      fro-to (a ^♭) = ♭-ap _^♭ refl
      
  ♯♭-eq : {@♭ i : ULevel} {@♭ A : Type i} → ♯ (♭ A) ≃ ♯ A
  ♯♭-eq {A = A} = equiv to fro to-fro fro-to
    where
      to : ♯ (♭ A) → ♯ A
      to a =
        let♯ u ^♯:= a in♯
          let♭ v ^♭:= u in♭ (v ^♯)

      fro : ♯ A → ♯ (♭ A)
      fro a =
        let♯ u ^♯:= a in♯ 
          let♯ v ::= u in♯ (v ^♭) ^^♯
          
      abstract 
        to-fro : (a : ♯ A) → to (fro a) == a
        to-fro a = -- It suffices to show ♯ (to fro a == a),
          (let♯ u ^♯:= a in♯ -- which lets us assume a = u^♯
            refl ^♯ -- so that the equality follows judgementally.
          in-family (λ a → to (fro a) == a))
          |> ♯-=-retract

        fro-to : (a : ♯ (♭ A)) → fro (to a) == a
        fro-to a = -- It suffices to show ♯ (fro to a == a),
          (let♯ u ^♯:= a in♯ -- which lets us assume a = u^♯ with u : ♭ A,
            (let♭ v ^♭:= u in♭ -- so we can assume u = v^♭,
                  refl ^♯ -- so that the equality follows judgementally.
             in-family (λ u → ♯ (fro (to (u ^♯)) == (u ^♯))))
           in-family (λ a → fro (to a) == a))
          |> ♯-=-retract

  -- Theorem 6.27 of Shulman
  -- The adjunction between ♭ and ♯
  ♭♯-adjoint : {@♭ i j : ULevel} {@♭ A : Type i} {@♭ B : A → Type j}
               → ♭ ((a : ♭ A) → B (a ↓♭)) ≃ ♭ ((a : A) → ♯ (B a))
  ♭♯-adjoint {A = A} {B = B} = equiv to fro to-fro fro-to
    where
      to :  ♭ ((a : ♭ A) → B (a ↓♭)) →  ♭ ((a : A) → ♯ (B a))
      to (f ^♭) = (λ a → let♯ u ::= a in♯ f (u ^♭) ^^♯) ^♭

      fro :  ♭ ((a : A) → ♯ (B a)) →  ♭ ((a : ♭ A) → B (a ↓♭))
      fro (f ^♭) = (λ a → let♭ u ^♭:= a in♭ ((f u) ↓♯) in-family (λ a → B (a ↓♭))) ^♭

      to-fro : ∀ f → to (fro f) == f
      to-fro (f ^♭) = refl

      fro-to : ∀ f → fro (to f) == f
      fro-to (f ^♭) =
        ♭-ap _^♭ -- We can strip ^♭ from both sides,
          ( λ= (λ a →  let♭ u ^♭:= a in♭ -- then, working at a crisp argument u,
                  refl -- we find both sides are judgementally the same.
               in-family (λ a → ♭-elim (λ a₁ → B (a₁ ↓♭)) (λ (@♭ u : _) → f (u ^♭)) a == f a)  )
            ) -- The "in family" gibberish just reminds agda what we are trying to prove. 

  -- Shulman Theorem 3.7
  -- ♯ is left exact, in that x^♯ == y^♯ is ♯ (x == y)
  module _ {@♭ i : ULevel} where
    private
      record CTX-code : Type (lsucc i) where
        constructor ctx
        field
          ᶜA : Type i
          ᶜx : ♯ ᶜA
          ᶜy : ♯ ᶜA

    code : {A : Type i} → ♯ A → ♯ A → Type i
    code {A} x y =
      let♯ γ ::= (ctx A x y) in♯-♯ (((ᶜx γ) ↓♯) == ((ᶜy γ) ↓♯))
      where open CTX-code

    private
      record CTX-r : Type (lsucc i) where
        constructor ctx
        field
          ᶜA : Type i
          ᶜx : ♯ ᶜA
           
    r : {A : Type i} (x : ♯ A) → code x x
    r {A} x =
      let♯ γ ::= (ctx A x) in♯ (idp {a = (ᶜx γ) ↓♯}) ^^♯
      where open CTX-r
       -- for some reason, I can't use refl here, I need idp???
    
    encode : {A : Type i} {a b : ♯ A} → (a == b) → code a b
    encode {A} {a} {b} p = transport (λ y → code a y) p (r a)

    decode : {A : Type i} {a b : ♯ A} → code a b → (a == b)
    decode {A} {a} {b} = -- It suffices to give ♯ (code a b → a == b) by lemma.
      lemma a b (decode' a b)
      where
        lemma : {A : Type i} (a b : ♯ A)
                → ♯ (code a b → (a == b))
                → code a b → (a == b)
        lemma a b p e =
          ♯-=-retract $ -- it suffices to show ♯ (a == b)
            let♯ q ^♯:= p in♯ ((q e) ^♯) -- so we can assume p is of the form q ^♯.
        
        decode' : {A : Type i} (a b : ♯ A) → ♯ (code a b → (a == b))
        decode' {A} a b =
          let♯ u ^♯:= a in♯ -- By ♯-elim, we can assume a and b are of the form
            let♯ v ^♯:= b in♯ -- u ^♯ and v ^♯, and we'll give
                                 -- code (u ^♯) (v ^♯) → (u ^♯) == (v ^♯).
                   (λ p → ♯-=-retract -- Assuming a code p, it suffices to give
                                                    -- ♯ (u ^♯ == v ^♯).
                   (let♯ q ^♯:= p in♯ ((ap _^♯ q)^♯)) )^♯ -- So, we let p be q^♯
                                                          -- with q : u == v, and then
                                                          -- push this through the unit.
            in-family (λ b' → code (u ^♯) b' → (u ^♯) == b')
          in-family (λ a' → code a' b → a' == b)

       

    private -- context for encode-decode'
      record CTX-encode-decode : Type (lsucc i) where
        constructor ctx
        field
          ᶜA : Type i
          ᶜa : ♯ ᶜA
          ᶜb : ♯ ᶜA
          -- ᶜp : code ᶜa ᶜb
      open CTX-encode-decode
    {-
    encode-decode' : {A : Type i} {a b : ♯ A} → ♯ ((encode {a = a}{b = b})∘ decode == (idf (code a b)))
    encode-decode' {A} {a} {b} =
      let♯ γ ::= (ctx A a b) in♯
        {!let♯ u ^♯:= (ᶜa γ) in♯
           ?
         in-family (λ a' → (encode {a = a'}{b = ᶜb γ})∘ decode == (idf (code a' (ᶜb γ))))!}
      ^^♯-in-family (λ γ' → (encode {a = ᶜa γ'}{b = ᶜb γ'})∘ decode == (idf (code (ᶜa γ') (ᶜb γ'))))
  
    -- [WARNING] I get an error here complaining about A in (a ↓♯) == (b ↓♯) if doing this at
    -- p : code a b (I believe this to be because rewrite rules do not see the ♭ modality)
    encode-decode : {A : Type i} {a b : ♯ A} → (encode {a = a}{b = b})∘ decode == (idf (code a b))
    encode-decode {A} {a} {b} =
      λ= (λ p → {!!})

    -}
    

  -- For now, we'll just postulate it
  ♯-=-compare : {@♭ i : ULevel} {A : Type i} {x y : A}
                → ♯ (x == y) → (x ^♯) == (y ^♯)
  ♯-=-compare {x = x} {y = y} p =
    ♯-=-retract  $ -- it suffices to give ♯ (x ^♯ == y ^♯)
      let♯ q ^♯:= p in♯ -- in which case we may assume p = q ^♯ with q : x == y
        ((ap _^♯ q) ^♯) -- and so we can push this through.
  module _ {@♭ i : ULevel} where
    private
      record CTX-♯-lex : Type (lsucc i) where
        constructor ctx
        field
          ᶜA : Type i
          ᶜx : ᶜA
          ᶜy : ᶜA
    postulate
      ♯-lex : {A : Type i} {x y : A}
              → (♯-=-compare {x = x} {y = y}) is-an-equiv

    ♯-lex-eq : {A : Type i} {x y : A}
               → (♯ (x == y)) ≃ ((x ^♯) == (y ^♯))
    ♯-lex-eq {A}{x}{y} = ♯-=-compare , ♯-lex

    test : {A : Type i} {x y : ♯ A}
           → ♯ ((x ^♯) == (y ^♯) → ♯ (x == y))
    test {A} {x} {y} =
      let♯ γ ::= (ctx (♯ A) x y) in♯
        (λ p → let♯ q ::= p in♯
                  (♭-ap _↓♯ q)
                ^^♯-in-family (λ _ → (ᶜx γ == ᶜy γ)))
      ^^♯-in-family (λ γ → ((ᶜx γ) ^♯) == ((ᶜy γ) ^♯) → ♯ ((ᶜx γ) == (ᶜy γ)))
      where open CTX-♯-lex

  ♯-has-level-is-codisc : {@♭ i : ULevel} {A : Type i}
                          {n : ℕ₋₂} → (has-level n (♯ A)) is-codiscrete
  ♯-has-level-is-codisc {i} {A} {n} = replete helper (has-level-def-eq ⁻¹)
    where
      replete = (Modality.local-is-replete {i}) ♯-modality

      helper : {A : Type i}
               {n : ℕ₋₂} → (has-level-aux n (♯ A)) is-codiscrete
      helper {A} {⟨-2⟩} =
        ♯-Σ (λ x → (y : ♯ A) → x == y) (♯-is-codiscrete A) $
          λ x → ♯-Π (λ y → =-is-codiscrete x y) 

      helper {A} {n = S n} =
        ♯-Π (λ x →
          ♯-Π (λ y →
            replete (replete (helper {A = (x == y)} {n}) (has-level-def-eq ⁻¹))
              (≃-preserves-level-eq ((codisc-eq $ =-is-codiscrete x y) ⁻¹))))

      
  ♯-preserves-level : {@♭ i : ULevel} {A : Type i}
                      {n : ℕ₋₂} (p : has-level n A)
                      → has-level n (♯ A)
  ♯-preserves-level {i} {A} {⟨-2⟩} p =
    has-level-in ( ((contr-center p)^♯) ,
      (λ y → ♯-=-retract $ -- It suffices to prove ♯ (center == y)
              let♯ u ^♯:= y in♯ -- so we can assume y is u ^♯
                ap _^♯ (contr-path p u) ^♯ -- and then apply _^♯ to the contractibility of A.
              in-family (λ y → ((contr-center p) ^♯) == y))
      )
  ♯-preserves-level {i} {A} {S n} p =
    has-level-in
      (λ x y → -- Given x y : ♯ A, we need to show that x == y has level n.
           ≃-preserves-level ((codisc-eq (=-is-codiscrete x y))⁻¹) lemma 
      ) -- since x == y is ♯ (x == y), it will suffice to show that has level n.
    where
      lemma : {x y : ♯ A} →  has-level n (♯ (x == y))
      lemma {x} {y} = -- Since has-level is codiscrete on codiscretes,
        un♯ ♯-has-level-is-codisc $ -- we can let x and y be u^♯ and v^♯.
          let♯ u ^♯:= x in♯ -- Then, we use the lex-ness of ♯ and a bit of jiggling
             let♯ v ^♯:= y in♯ -- to show that we might as well prove the result of
                (≃-preserves-level (e u v) -- ♯ (u == v), which we can do by recursing.
                  (♯-preserves-level (has-level-apply p u v)))^♯
              in-family (λ y → has-level n (♯ ((u ^♯) == y)))
           in-family (λ x → has-level n (♯ (x == y)))
        where
          e : (u v : A) → ♯ (u == v) ≃ ♯ ((u ^♯) == (v ^♯))
          e u v = ♯ (u == v)
                ≃⟨ codisc-eq (♯-is-codiscrete (u == v)) ⟩
                  ♯ (♯ (u == v))
                ≃⟨ ♯→e ♯-lex-eq ⟩
                  ♯ ((u ^♯) == (v ^♯))
                ≃∎

  ♯ₙ : {@♭ i : ULevel} {n : ℕ₋₂}
       → (A : n -Type i) → (n -Type i)
  ♯ₙ A = (♯ (fst A)) , ♯-preserves-level (snd A)
