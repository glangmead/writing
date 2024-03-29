{-# OPTIONS --without-K --rewriting --cohesion #-}

module Base where

  open import lib.Basics 

  open import lib.Funext
  open import lib.NType2
  open import lib.types.Truncation
  open import lib.types.Bool

  quodlibet : {i : ULevel} {A : Type i} → ⊥ → A
  quodlibet = ⊥-elim

  -- infix notation for piping a term argument into a dependent function
  _|>_ : ∀ {i j} {A : Type i} {B : A → Type j}
        (a : A) (f : (a : A) → B a) → B a
  a |> f = f a

  -- infix notation for applying a path between two functions to an argument to give a path from f x to g x
  _at_ : ∀ {i j} {A : Type i} {P : A → Type j} {f g : Π A P} (p : f == g) → f ∼ g
  p at x = app= p x

  End : ∀ {i} (X : Type i) → Type i
  End X = X → X

  -- composition of a dependent function with a fiberwise dependent function
  infixl 80 _>>_
  _>>_ : ∀ {i j k} {A : Type i} {B : A → Type j} {C : (a : A) → (B a → Type k)}
          → (f : Π A B) → (g : {a : A} → Π (B a) (C a)) → Π A (λ a → C a (f a))
  f >> g = λ x → g (f x)

  -- Crisp function types (the domain must be crisp)
  _::→_ : {@♭ i : ULevel} {j : ULevel} (@♭ A : Type i) (B : Type j) → Type (lmax i j)
  A ::→ B = (@♭ _ : A) → B

  crispen : {@♭ i : ULevel} {j : ULevel} {@♭ A : Type i} {B : A → Type j}
            → ((a : A) → B a)
            → ((@♭ a : A) → B a)
  crispen f a = f a

  const : {i j : ULevel} {A : Type i} {B : Type j}
          (b : B) → A → B
  const b _ = b

  crisp-const : {@♭ i : ULevel} {j : ULevel} {@♭ A : Type i} {B : Type j}
                (b : B) → A ::→ B
  crisp-const b _ = b

  -- Crisp function extensionality (postulated for now, because I'm lazy)
  postulate
    -- domain is a crisp term of a crisp type
    ♭λ= : {@♭ i : ULevel} {j : ULevel} {@♭ A : Type i}
          {B : A → Type j} {f g : (@♭ a : A) → B a}
          (h : (@♭ a : A) → f a == g a)
          → f == g
  -- Fully crisp function extensionalty: domain and codomain are crisp types
  ♭♭λ= : {@♭ i j : ULevel} {@♭ A : Type i}
          {@♭ B : A → Type j} {@♭ f g : (@♭ a : A) → B a}
          (@♭ h : (@♭ a : A) → f a == g a)
          → f == g
  ♭♭λ= h = ♭λ= h

  -- The "identity path" is called refl
  -- refl : ∀ {i} { A : Type i} {a : A} → a == a
  pattern refl = idp

  _is-an-equiv = is-equiv

  _is-an-equivalence-because_is-inverse-by_and_ : ∀ {i} {j} {A : Type i} {B : Type j}
                                                  → (f : A → B)
                                                    (g : B → A) (f-g : (b : B) → f (g b) == b)
                                                    (g-f : (a : A) → g (f a) == a) → is-equiv f
  f is-an-equivalence-because g is-inverse-by f-g and g-f = is-eq f g f-g g-f


  _is-split-inj : {i j : ULevel} {A : Type i} {B : Type j} (s : A → B) → Type (lmax i j)
  _is-split-inj {A = A} {B = B} s = Σ (B → A) (λ r → (a : A) → r (s a) == a) 

  -- Implicit and Explicit function types are equivalent

  imp-equiv-exp : {i j : ULevel} {A : Type i} {B : A → Type j}
                  → ({a : A} → B a) ≃ ((a : A) → B a)
  imp-equiv-exp = (λ f x → f {x}) ,
                    record
                    { g = λ z {x} → z x
                    ; f-g = λ b → idp
                    ; g-f = λ a → idp
                    ; adj = λ a → idp
                    }

  exp-equiv-imp : {i j : ULevel} {A : Type i} {B : A → Type j}
                  → ((a : A) → B a) ≃ ({a : A} → B a)
  exp-equiv-imp = imp-equiv-exp ⁻¹

  _⊔→_ : {i j k l : ULevel} {A : Type i} {B : Type j} {C : Type k} {D : Type l}
          (f : A → C) (g : B → D)
          → A ⊔ B → C ⊔ D
  (f ⊔→ g) (inl a)  = inl (f a)
  (f ⊔→ g) (inr b)  = inr (g b)

  _⊔e_ : {i j k l : ULevel} {A : Type i} {B : Type j} {C : Type k} {D : Type l}
          (f : A ≃ C) (g : B ≃ D)
          → A ⊔ B ≃ C ⊔ D
  f ⊔e g =
    equiv
      ((–> f) ⊔→ (–> g))
      ((<– f) ⊔→ (<– g))
      (λ {(inl c) → ap inl ((<–-inv-r f) c) ; (inr d) → ap inr ((<–-inv-r g) d) })
      (λ {(inl a) → ap inl ((<–-inv-l f) a) ; (inr b) → ap inr ((<–-inv-l g) b) })

  -- A non-instance version of this function because I find that instance so annoying
  ≃-preserves-level : ∀ {i j} {A : Type i} {B : Type j} {n : ℕ₋₂} (e : A ≃ B)
                      → has-level n A → has-level n B
  ≃-preserves-level e p = equiv-preserves-level e {{p}}

  -- An equivalence version of the above
  ≃-preserves-level-eq : ∀ {i j} {A : Type i} {B : Type j} {n : ℕ₋₂} (e : A ≃ B)
                          → has-level n A ≃ has-level n B
  ≃-preserves-level-eq e =
    equiv 
      (≃-preserves-level e)
      (≃-preserves-level (e ⁻¹))
      (λ b → prop-path has-level-is-prop _ _)
      (λ a → prop-path has-level-is-prop _ _)

  -- An equivalence between has-level-aux and has-level
  has-level-def-eq : {i : ULevel} {A : Type i} {n : ℕ₋₂}
                      → (has-level n A) ≃ (has-level-aux n A)
  has-level-def-eq {A = A} {n = n} = equiv has-level-apply has-level-in (λ b → refl) (λ a → refl)



  -- Compositional reasoning (like equational reasoning, but for composing)
  infixr 15 _→∎
  infixr 10 _–⟨_⟩→_

  _–⟨_⟩→_ : ∀ {i j k} (A : Type i) {B : A → Type j} {C : (a : A) → B a → Type k}
            → (f : (a : A) → B a) → (g : {a : A} → (b : B a) → C a b)
            → ((a : A) → C a (f a))
  _ –⟨ f ⟩→ g = f >> g

  _→∎ : ∀ {i} (A : Type i) → A → A
  _→∎ = idf

  {-
  -- SKETCHING
  lemma : ∀ {i j} (A : Type i) (B : Type j) (a₀ : A)
          (p : (f : A → B) (a : A) → (f a₀) == (f a))
          → (const {A = A} {B = B}) is-an-equiv
  lemma A B a₀ p = is-eq const (λ f → f a₀) fro-to to-fro
    where
      to-fro : ∀ a → ((const a) a₀) == a
      to-fro a = refl

      fro-to : ∀ (f : A → B) → (const (f a₀)) == f
      fro-to f =
        λ= $
          λ a → p f a

  module _ {i j} (R : Type i) (r₀ : R) (B : Type j) (S : Type j)  where
    postulate
      σ : B → S
      contr : (γ : R → S) (r : R) → (γ r₀) == (γ r)

    _is-discrete : ∀ {k} (X : Type k) → Type _
    X is-discrete = (const {A = R} {B = X}) is-an-equiv
    

    S-is-discrete : S is-discrete
    S-is-discrete = lemma R S r₀ contr

    
  -}
