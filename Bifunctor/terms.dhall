    let Bifunctor = ./Type

in  let first = ./first

in  let second = ./second

in    λ(p : Type → Type → Type)
    → λ(bifunctor : Bifunctor p)
    → { bimap =
          bifunctor.bimap
      , first =
          first p bifunctor
      , second =
          second p bifunctor
      }
