    let Category = ./Category/Type

in    λ(f : Type → Type → Type)
    → λ(category : Category f)
    → { identity = category.identity, compose = category.compose }
