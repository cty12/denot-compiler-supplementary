{-# OPTIONS --without-K #-}
{- Extracted from a library of abstract binding trees (not named, for
   anonymous review): just environments and extending them. -}
open import Data.Nat using (ℕ; zero; suc)
open import Framework.abt.Var

module Framework.abt.GSubst where

GSubst : ∀{ℓ} (V : Set ℓ) → Set ℓ
GSubst V = Var → V

infixr 6 _•_
_•_ : ∀{ℓ}{V : Set ℓ} → V
  → GSubst V
  → GSubst V
(v • σ) 0 = v
(v • σ) (suc x) = σ x
