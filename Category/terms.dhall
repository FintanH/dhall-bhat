    let Category = ./Type

in  let extractSemigroupoid = ./extractSemigroupoid

in  let semigroupoid = ./../Semigroupoid/terms.dhall

in    λ(f : Type → Type → Type)
    → λ(category : Category f)
    →   { identity = category.identity }
      ∧ semigroupoid f (extractSemigroupoid f category)
