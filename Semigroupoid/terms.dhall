    let Semigroupoid = ./Type

in    λ(f : Type → Type → Type)
    → λ(semigroupoid : Semigroupoid f)
    → { compose = semigroupoid.compose }
