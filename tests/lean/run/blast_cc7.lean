set_option blast.strategy "cc"

example (a b c d : Prop)
     [d₁ : decidable a] [d₂ : decidable b] [d₃ : decidable c] [d₄ : decidable d]
   : (a ↔ b) → (c ↔ d) → ((if (a ∧ c) then true else false) ↔ (if (b ∧ d) then true else false)) :=
by blast

example (a b c d : Prop) (x y z : nat)
     [d₁ : decidable a] [d₂ : decidable b] [d₃ : decidable c] [d₄ : decidable d]
   : (a ↔ b) → (c ↔ d) → x = y → ((if (a ∧ c ∧ a) then x else y) = (if (b ∧ d ∧ b) then y else x)) :=
by blast
