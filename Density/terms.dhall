    let functor = ./functor

in  let lift = ./lift

in  let lower = ./lower

in  λ(f : Type → Type) → { lift = lift f, lower = lower f } ∧ functor f
