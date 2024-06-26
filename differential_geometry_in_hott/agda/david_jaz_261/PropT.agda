{-# OPTIONS --without-K --rewriting --cohesion #-}

module PropT where
 
  open import Base

  open import lib.Basics
  open import lib.types.Sigma
  open import lib.NType2
  open import lib.types.Truncation
  open import lib.types.Lift

  _is-contractible : {i : ULevel} (A : Type i) → Type i
  _is-contractible = is-contr

  ⊤-is-contr : ⊤ is-contractible
  ⊤-is-contr = has-level-in (unit , (λ {unit → refl}))

  contr-≃-⊤ : {i : ULevel} {A : Type i} (c : A is-contractible)
              → A ≃ ⊤
  contr-≃-⊤ {A = A} c =
    equiv (λ _ → unit) (λ { unit → contr-center c })
          (λ {unit → refl})
          (λ a → contr-path c a)

  _is-a-prop : ∀ {i} → (A : Type i)  → Type i
  A is-a-prop = is-prop A

  PropT : (i : ULevel) → Type _
  PropT = hProp 

  PropT₀ = hProp₀

  _holds : ∀ {i} (P : PropT i) → Type i
  _holds = fst

  _holds-is-a-prop : {i : ULevel} (P : PropT i) → (P holds) is-a-prop
  _holds-is-a-prop = snd
 
  
  ∥_∥ : ∀ {i} (A :  Type i) → Type i
  ∥_∥ = Trunc -1

  True : PropT₀
  True = ⊤ , contr-is-prop ⊤-is-contr

  False : PropT₀
  False = ⊥ , has-level-in (λ x → quodlibet x)
  
  _And_ : ∀ {i j} → (A : Type i) (B : Type j) → Type (lmax i j)
  A And B = Σ A (λ _ → B)

  _And→_ : ∀ {i j k l} {A : Type i} {B : Type j} {C : Type k} {D : Type l}
           (f : A → C) (g : B → D)
           → (A And B) → (C And D)
  f And→ g = λ { (a , b) → f a , g b }

  infixl 30 _∧_
  _∧_ : ∀ {i j} (P : PropT i) (Q : PropT j) → PropT (lmax i j)
  P ∧ Q = ((P holds) And (Q  holds)) , Σ-level (P holds-is-a-prop) (λ _ → Q holds-is-a-prop)

  infixl 35 _∨_
  _∨_ : ∀ {i j} (P : PropT i) (Q : PropT j) → PropT (lmax i j)
  P ∨ Q = ∥ (P holds) ⊔ (Q holds) ∥ , ⟨⟩

  mapping-into-prop-is-a-prop : {i j : ULevel} {A : Type i} {P : A → Type j}
                                (f : (a : A) → ((P a) is-a-prop))
                                → ((a : A) → P a) is-a-prop
  mapping-into-prop-is-a-prop f = all-paths-is-prop (λ x y →
                                    λ= (λ a → prop-path (f a) (x a) (y a)))


  _⇒_ : ∀ {i j} (P : PropT i) (Q : PropT j) → PropT (lmax i j)
  P ⇒ Q = (P holds → Q holds) , mapping-into-prop-is-a-prop (λ _ → Q holds-is-a-prop)

  not : ∀ {i} (P : PropT i) → PropT i
  not P = P ⇒ False
  
  {- 
    To say ``There exists an a : A such that B a", write
      ∃ (λ (a : A) → B a)
  -}
  ∃ : {i j : ULevel} {A : Type i} (B : A → Type j) → PropT (lmax i j)
  ∃ {_} {_} {A} B = ∥ (Σ A B) ∥ , ⟨⟩

  ∃ₚ : ∀ {i j} {A : Type i} (B : A → PropT j) → PropT (lmax i j)
  ∃ₚ {A = A} B = ∃ λ (a : A) → (B a) holds

  ∀ₚ : ∀ {i j} {A : Type i} (P : A → PropT j) → PropT (lmax i j)
  ∀ₚ P = (∀ a → (P a) holds) , mapping-into-prop-is-a-prop (λ a → (P a) holds-is-a-prop)

  _holds-implies-dec-eq : {i : ULevel} (P : PropT i)
                          → P holds → (P holds) ≃ (Dec (P holds))
  (P holds-implies-dec-eq) p  = equiv (λ _ → inl p)
                                      ((λ { (inl q) → q ; (inr nq) → quodlibet (nq p) }))
                                      (λ { (inl q) → ap inl (prop-path (P holds-is-a-prop) p q)
                                         ; (inr nq) → quodlibet (nq p) })
                                      (λ q → prop-path (P holds-is-a-prop) p q)

  _holds-by_implies-=-True : (P : PropT₀) (p : P holds)
                             → P == True
  (P , q) holds-by p implies-=-True = pair= left-id right-id
    where
      left-id : P == ⊤
      left-id = (ua {A = P} {B = True holds} (contr-≃-⊤ {A = P} (inhab-prop-is-contr p {{q}})))

      right-id : q == (snd True) [ _is-a-prop ↓ left-id ]
      right-id = from-transp _is-a-prop left-id
                      (prop-path (has-level-is-prop) (transport _is-a-prop left-id q) (snd True) )

  ¬-_holds-by_implies-=-False : (P : PropT₀) (p : ¬ (P holds))
                                → P == False
  ¬- (P , q) holds-by np implies-=-False = pair= left-id right-id
    where
      left-id : P == ⊥
      left-id = ua {A = P} {B = False holds} e
        where e : P ≃ ⊥
              e = equiv np (λ ()) (λ ()) (λ p → quodlibet (np p))

      right-id : q == (snd False) [ _is-a-prop ↓ left-id ]
      right-id =
        from-transp _is-a-prop left-id
          (prop-path (has-level-is-prop) (transport _is-a-prop left-id q) (snd False))

  iff-to-≃ : ∀ {i j} {P : PropT i} {Q : PropT j}
             → (P holds → Q holds)
             → (Q holds → P holds)
             → (P holds) ≃ (Q holds)
  iff-to-≃ {P = P} {Q = Q} f g =
    equiv f g
      (λ b → prop-path (snd Q) (f (g b)) b)
      (λ a → prop-path (snd P) (g (f a)) a)

  -- Propositional Resizing

  lift-prop : {i j : ULevel} → PropT i → PropT (lmax i j)
  lift-prop {i} {j} (P , q) = (Lift {i} {j} P) , Lift-level q

  postulate prop-resize : {i j : ULevel} → (lift-prop {i} {j}) is-an-equiv

  resize-eq : {i j : ULevel} → PropT i ≃ PropT (lmax i j)
  resize-eq {i} {j} = (lift-prop {i} {j}) , prop-resize

  resize₀ : {i : ULevel} → PropT i → PropT₀
  resize₀ {i} = <– (resize-eq {lzero} {i})

  unresize₀ : {i : ULevel} → PropT₀ → PropT i
  unresize₀ {i} = –> (resize-eq {lzero} {i})
