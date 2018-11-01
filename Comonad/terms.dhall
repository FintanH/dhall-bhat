    let Comonad = ./Type

in  let extractFunctor = ./extractFunctor

in  let functor = ./../Functor/terms.dhall

in    λ(w : Type → Type)
    → λ(comonad : Comonad w)
    → comonad ⫽ functor w (extractFunctor w comonad)
