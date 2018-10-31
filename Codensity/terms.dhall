    let lift = ./lift

in  let lower = ./lower

in  let monad = ./monad

in  λ(m : Type → Type) → { lift = lift m, lower = lower m } ∧ monad m
