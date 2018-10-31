    let Strong = ./Type

in  let extractProfunctor = ./extractProfunctor

in  let profunctor = ./../Profunctor/terms.dhall

in    λ(f : Type → Type → Type)
    → λ(strong : Strong f)
    →   { first = strong.first, second = strong.second }
      ∧ profunctor f (extractProfunctor f strong)
